import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storeapp/common/widgets/appbar/appnar.dart';
import 'package:storeapp/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Add new Addres'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
              child: Column(
            children: [
              const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
              const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone')),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              const Row(
                children: [
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.building_31), labelText: 'Street')),
                  ),
                   SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.code), labelText: 'Postal code')),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              const Row(
                children: [
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.building), labelText: 'City')),
                  ),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.activity), labelText: 'State')),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
              const SizedBox(height: TSizes.defaultSpace,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Save')),)
            ],
          )),
        ),
      ),
    );
  }
}
