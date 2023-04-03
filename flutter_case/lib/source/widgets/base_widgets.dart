import 'package:flutter/material.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.profilePhoto,
            style: TextStyle(fontSize: 16.0, color: UIColor.darkGray),
          ),
        ],
      ),
    );
  }
}

class ProfilePhotoTitle extends StatelessWidget {
  const ProfilePhotoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(UIText.profilePhotoTitle),
        ],
      ),
    );
  }
}

class Gender extends StatelessWidget {
  const Gender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.gender,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class PetQuestion extends StatelessWidget {
  const PetQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.petQuestion,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class PetTitle extends StatelessWidget {
  const PetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0, bottom: 18.0),
      child: Row(
        children: [
          Text(
            UIText.petTitle,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class EducationalStatus extends StatelessWidget {
  const EducationalStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.educationalStatus,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class MounthlySalary extends StatelessWidget {
  const MounthlySalary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.monthlySalary,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class AdditionalIncome extends StatelessWidget {
  const AdditionalIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.additionalIncome,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class AddIncomeType extends StatelessWidget {
  const AddIncomeType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.additionalIncomeType,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class AddIncomeButton extends StatelessWidget {
  const AddIncomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: Text(UIText.addIncome),
          ),
        ],
      ),
    );
  }
}

class RentalAmount extends StatelessWidget {
  const RentalAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.rentalAmount,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class PriceRange extends StatelessWidget {
  const PriceRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.priceRange,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class MinMaxPrice extends StatelessWidget {
  const MinMaxPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(UIText.lowest),
          Text(UIText.highest),
        ],
      ),
    );
  }
}

class AboutYourself extends StatelessWidget {
  const AboutYourself({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
      child: Row(
        children: [
          Text(
            UIText.aboutYourself,
            style: TextStyle(color: UIColor.darkGray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class AboutYourselfHint extends StatelessWidget {
  const AboutYourselfHint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
      child: Row(
        children: [
          Text(
            UIText.aboutYourselfHint,
            style: TextStyle(color: UIColor.gray, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class UpdateDate extends StatelessWidget {
  const UpdateDate({
    super.key,
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
      child: Row(
        children: [
          Text(
            "${dateTime.day}.${dateTime.month}.${dateTime.year} tarihinde güncellendi.",
            style: TextStyle(
              color: UIColor.chooseButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}
