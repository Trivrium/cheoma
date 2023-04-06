import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TimeInputPart timeInputPart = const TimeInputPart();
  EndTimePart endTimePart = const EndTimePart();
  ReasonInputPart reasonInputPart = const ReasonInputPart();
  ReasonPresetPart reasonPresetPart = const ReasonPresetPart();
  StartButtonPart startButtonPart = const StartButtonPart();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white70, fontSize: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.lightBlueAccent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          timeInputPart,
          endTimePart,
          reasonInputPart,
          reasonPresetPart,
          startButtonPart,
        ]),
      ),
    );
  }
}

/// 사용 시간 입력 파트
class TimeInputPart extends StatelessWidget {
  const TimeInputPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.white,
        )),
        child: const Text(
          '사용 시간 입력 파트',
        ));
  }
}

/// 예상 종료 시간 표시 파트
class EndTimePart extends StatelessWidget {
  const EndTimePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.white,
        )),
        child: const Text(
          '예상 종료 시간 표시 파트',
        ));
  }
}

/// 사용 이유 입력 파트
class ReasonInputPart extends StatelessWidget {
  const ReasonInputPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.white,
        )),
        child: const Text(
          '사용 이유 입력 파트',
        ));
  }
}

/// 사용 이유 프리셋 파트
class ReasonPresetPart extends StatelessWidget {
  const ReasonPresetPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 8,
      children: ['프리셋1', '프리셋2', '프리셋3', '프리셋4', '프리셋5', '프리셋6']
          .map(
              (preset) => ElevatedButton(onPressed: () {}, child: Text(preset)))
          .toList(),
    );
  }
}

/// 사용 시작 버튼
class StartButtonPart extends StatelessWidget {
  const StartButtonPart({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: const Text('시작'));
  }
}
