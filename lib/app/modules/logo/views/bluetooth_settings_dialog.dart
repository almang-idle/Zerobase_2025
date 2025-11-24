import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_settings/app_settings.dart';

class BluetoothSettingsDialog extends StatelessWidget {
  const BluetoothSettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: Container(
        width: Get.width * 0.25,
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // --- Title Area ---
            const Padding(
              padding: EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0, bottom: 16.0),
              child: Text(
                '블루투스가 꺼져있습니다',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),

            // --- Message Area ---
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                '기기와 연결하려면 블루투스를\n켜주세요.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Divider(height: 1, color: Colors.grey),

            // --- Action Buttons ---
            Row(
              children: [
                // Cancel Button
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Text(
                        '취소',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 45,
                  color: Colors.grey,
                ),
                // Settings Button
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Text(
                        '설정',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                        AppSettings.openAppSettings(type: AppSettingsType.bluetooth);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}