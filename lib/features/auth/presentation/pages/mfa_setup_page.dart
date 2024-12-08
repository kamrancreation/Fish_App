import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../providers/auth_provider.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_text_field.dart';

class MfaSetupPage extends StatefulWidget {
  const MfaSetupPage({super.key});

  @override
  State<MfaSetupPage> createState() => _MfaSetupPageState();
}

class _MfaSetupPageState extends State<MfaSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  String? _secret;
  bool _isLoading = false;
  String? _error;
  bool _isEnabled = false;

  @override
  void initState() {
    super.initState();
    _initializeMFA();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _initializeMFA() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final authProvider = context.read<AuthProvider>();
      final settings = await authProvider.initializeMFA();
      setState(() {
        _secret = settings.secret;
        _isEnabled = settings.isEnabled;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _verifyAndEnableMFA() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
        _error = null;
      });

      try {
        final authProvider = context.read<AuthProvider>();
        await authProvider.enableMFA(_codeController.text);
        setState(() {
          _isEnabled = true;
        });
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('MFA has been enabled successfully'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context);
        }
      } catch (e) {
        setState(() {
          _error = e.toString();
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(height: 24),
                const Icon(
                  Icons.security,
                  size: 64,
                ),
                const SizedBox(height: 24),
                Text(
                  'Enhance Your Account Security',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Two-factor authentication adds an extra layer of security to your account. Once enabled, you\'ll need to enter a verification code from your authenticator app when signing in.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                if (_isLoading)
                  const Center(child: CircularProgressIndicator())
                else if (_error != null)
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      _error!,
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  )
                else if (_secret != null && !_isEnabled) ...[
                  const Text(
                    '1. Scan this QR code with your authenticator app:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: QrImageView(
                      data:
                          'otpauth://totp/FishPro:${context.read<AuthProvider>().currentUser?.email}?secret=$_secret&issuer=FishPro',
                      version: QrVersions.auto,
                      size: 200,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '2. Enter the verification code from your app:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  AuthTextField(
                    label: 'Verification Code',
                    hint: 'Enter 6-digit code',
                    controller: _codeController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter the verification code';
                      }
                      if (value!.length != 6) {
                        return 'Code must be 6 digits';
                      }
                      if (!RegExp(r'^\d+$').hasMatch(value)) {
                        return 'Code must contain only digits';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  AuthButton(
                    text: 'Enable Two-Factor Authentication',
                    onPressed: _verifyAndEnableMFA,
                    isLoading: _isLoading,
                  ),
                ] else if (_isEnabled)
                  const Center(
                    child: Text(
                      'Two-factor authentication is enabled!',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
