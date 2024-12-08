import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/auth_button.dart';
import 'package:local_auth/local_auth.dart';

class BiometricSetupPage extends StatefulWidget {
  const BiometricSetupPage({super.key});

  @override
  State<BiometricSetupPage> createState() => _BiometricSetupPageState();
}

class _BiometricSetupPageState extends State<BiometricSetupPage> {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _isBiometricsAvailable = false;
  List<BiometricType> _availableBiometrics = [];
  String _biometricType = '';

  @override
  void initState() {
    super.initState();
    _checkBiometrics();
  }

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await _localAuth.canCheckBiometrics;
      if (canCheckBiometrics) {
        final availableBiometrics = await _localAuth.getAvailableBiometrics();
        setState(() {
          _isBiometricsAvailable = true;
          _availableBiometrics = availableBiometrics;
          if (availableBiometrics.contains(BiometricType.face)) {
            _biometricType = 'Face ID';
          } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
            _biometricType = 'Fingerprint';
          } else {
            _biometricType = 'Biometric';
          }
        });
      }
    } catch (e) {
      setState(() {
        _isBiometricsAvailable = false;
      });
    }
  }

  Future<void> _enableBiometrics() async {
    if (!_isBiometricsAvailable) return;

    try {
      final authProvider = context.read<AuthProvider>();
      final didAuthenticate = await _localAuth.authenticate(
        localizedReason: 'Authenticate to enable biometric login',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );

      if (didAuthenticate) {
        await authProvider.enableBiometricAuth();
        if (mounted) {
          Navigator.pop(context, true);
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Up Biometric Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.fingerprint,
                size: 64,
              ),
              const SizedBox(height: 24),
              Text(
                'Enable $_biometricType Login',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Use $_biometricType for quick and secure access to your account.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
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

              // Biometrics Status
              if (!_isBiometricsAvailable)
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.warning,
                        color: Colors.orange,
                        size: 32,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Biometric authentication is not available on this device.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.orange[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

              const Spacer(),

              // Enable Button
              if (_isBiometricsAvailable)
                AuthButton(
                  text: 'Enable $_biometricType Login',
                  onPressed: _enableBiometrics,
                  isLoading: authProvider.isLoading,
                ),
              const SizedBox(height: 16),

              // Cancel Button
              AuthButton(
                text: 'Maybe Later',
                onPressed: () => Navigator.pop(context),
                backgroundColor: Colors.grey,
              ),

              const SizedBox(height: 32),

              // Benefits Card
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Benefits of Biometric Login:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildBenefitRow(
                        Icons.speed,
                        'Quick Access',
                        'Sign in instantly with your biometrics',
                      ),
                      const SizedBox(height: 8),
                      _buildBenefitRow(
                        Icons.security,
                        'Enhanced Security',
                        'More secure than traditional passwords',
                      ),
                      const SizedBox(height: 8),
                      _buildBenefitRow(
                        Icons.touch_app,
                        'Convenience',
                        'No need to remember passwords',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBenefitRow(IconData icon, String title, String description) {
    return Row(
      children: [
        Icon(icon, size: 24, color: Theme.of(context).primaryColor),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
