import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 宜家风格登录表单
class LoginFormWidget extends GetView<AiLoginController> {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF005596), // IKEA 蓝色
            Color(0xFF2C77BA),
            Color(0xFF005596),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo 或标题
              const Text(
                'IKEA',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '欢迎登录',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 48),
              
              // 登录卡片
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      // 用户名输入框
                      TextField(
                        onChanged: controller.updateUsername,
                        decoration: const InputDecoration(
                          labelText: '用户名',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          prefixIcon: Icon(Icons.person, color: Color(0xFF005596)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // 密码输入框
                      TextField(
                        onChanged: controller.updatePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: '密码',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Color(0xFF005596)),
                        ),
                      ),
                      const SizedBox(height: 24),
                      
                      // 登录按钮
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: controller.handleLogin,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF005596), // IKEA 蓝色
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            '登录',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // 忘记密码和注册链接
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: controller.handleForgotPassword,
                            child: const Text(
                              '忘记密码?',
                              style: TextStyle(color: Color(0xFF005596)),
                            ),
                          ),
                          TextButton(
                            onPressed: controller.handleRegister,
                            child: const Text(
                              '注册新账户',
                              style: TextStyle(color: Color(0xFF005596)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // 宜家特色元素
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.white70, size: 16),
                  SizedBox(width: 8),
                  Text(
                    '让家更美好',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
