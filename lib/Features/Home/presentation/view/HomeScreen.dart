import 'package:flutter/material.dart';
import 'package:flutterstarter/Core/Helper/Extensions.dart';

import '../../../../Core/index.dart';
import 'widgets/EventCard.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leadingWidth: 120.w,
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Image.asset(
            Assets.logo,
          ),
        ),
        actions: [
          Image.asset(Assets.notification, height: 24.w),
          horizontalBox(16),
          Container(
              margin: const EdgeInsets.only(right: 16),
              child: Image.asset(Assets.chat, height: 24.w)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Évènements',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            verticalBox(16),
            const EventCard(),
            verticalBox(16),
            const PostWidget(),
            verticalBox(16),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 4.0,

      selectedIndex: 0,
        shadowColor: Colors.black.withOpacity(0.5),
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          NavigationDestination(
            icon: Image.asset(
              Assets.home,
              height: 24.h,
            ),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Image.asset(
              Assets.search,
              height: 24.h,
            ),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              radius: 28,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Image.asset(Assets.add, height: 20.h),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset(
              Assets.tree,
              height: 24.h,
            ),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Image.asset(
              Assets.user,
              height: 24.h,
            ),
            label: 'Accueil',
          ),
          
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Theme.of(context).colorScheme.onSecondary,
              ),
              horizontalBox(6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Karim Younes',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  Text(
                    '08:39 AM',
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ],
              )
            ],
          ),
          verticalBox(8),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla natoque id',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          verticalBox(12),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Image.asset(
              Assets.eventPicture,
              height: 200.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          verticalBox(12),
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.heart,
                    height: 22.w,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  horizontalBox(8),
                  Image.asset(
                    Assets.comment,
                    height: 24.w,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  horizontalBox(8),
                  Image.asset(Assets.repost, height: 24.w),
                  horizontalBox(8),
                  Image.asset(Assets.sharePost, height: 24.w),
                ],
              ),
              const Spacer(),
              Image.asset(Assets.bookMark, height: 22.w),
            ],
          )
        ],
      ),
    );
  }
}