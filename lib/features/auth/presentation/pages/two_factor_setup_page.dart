import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_text_field.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TwoFactorSetupPage extends StatefulWidget {
  const TwoFactorSetupPage({super.key});

  @override
  State<TwoFactorSetupPage> createState() => _TwoFactorSetupPageState();
}

class _TwoFactorSetupPageState extends State<TwoFactorSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  String? _secretKey;
  String? _qrData;
  bool _showQR = true;

  @override
  void initState() {
    super.initState();
    _generateSecretKey();
  }

  Future<void> _generateSecretKey() async {
    final authProvider = context.read<AuthProvider>();
    final secret = await authProvider.generate2FASecret();
    setState(() {
      _secretKey = secret;
      _qrData = authProvider.get2FAQRUrl(secret);
    });
  }

  Future<void> _verify2FA() async {
    if (_formKey.currentState?.validate() ?? false) {
      final authProvider = context.read<AuthProvider>();
      final success = await authProvider.verify2FACode(
        _secretKey!,
        _codeController.text,
      );

      if (mounted && success) {
        Navigator.pop(context, true);
      }
    }
  }

  void _copySecretKey() {
    if (_secretKey != null) {
      Clipboard.setData(ClipboardData(text: _secretKey!));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Secret key copied to clipboard')),
      );
    }
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Up Two-Factor Authentication'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.security,
                  size: 64,
                ),
                const SizedBox(height: 24),
                Text(
                  'Enhance Your Security',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Scan the QR code or enter the secret key in your authenticator app to set up two-factor authentication.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Error Message
                if (authProvider.error != null) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      authProvider.error!,
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // QR Code
                if (_qrData != null && _showQR)
                  Center(
                    child: QrImage(
                      data: _qrData!,
                      version: QrVersions.auto,
                      size: 200.0,
                    ),
                  ),

                const SizedBox(height: 16),

                // Toggle between QR and Secret Key
                TextButton(
                  onPressed: () {
                    setState(() {
                      _showQR = !_showQR;
                    });
                  },
                  child: Text(
                    _showQR
                        ? 'Can\'t scan? Use secret key'
                        : 'Show QR code instead',
                  ),
                ),

                if (!_showQR && _secretKey != null) ...[
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _secretKey!,
                            style: const TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 16,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: _copySecretKey,
                        ),
                      ],
                    ),
                  ),
                ],

                const SizedBox(height: 32),

                // Verification Code Input
                AuthTextField(
                  label: 'Verification Code',
                  hint: 'Enter 6-digit code',
                  controller: _codeController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (_) => _verify2FA(),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter the verification code';
                    }
                    if (value!.length != 6) {
                      return 'Code must be 6 digits';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Verify Button
                AuthButton(
                  text: 'Verify and Enable 2FA',
                  onPressed: _verify2FA,
                  isLoading: authProvider.isLoading,
                ),

                const SizedBox(height: 32),

                // Instructions
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Setup Instructions:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '1. Download an authenticator app (Google Authenticator, Authy, etc.)',
                        ),
                        Text(
                          '2. Scan the QR code or enter the secret key manually',
                        ),
                        Text(
                          '3. Enter the 6-digit code shown in your authenticator app',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Important: Keep your secret key safe! You\'ll need it to recover access if you lose your device.',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
