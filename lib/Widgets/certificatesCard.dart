// ignore_for_file: file_names, must_be_immutable, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../app_Colors.dart';

class CertificatedCared extends StatefulWidget {
  const CertificatedCared({Key? key}) : super(key: key);

  @override
  State<CertificatedCared> createState() => _CertificatedCaredState();
}

class _CertificatedCaredState extends State<CertificatedCared> {
  final imageController = CarouselController();
  final images = [
    "https://img.freepik.com/free-vector/elegant-diploma-certificate-template-design_1017-17253.jpg?w=2000",
    "https://marketplace.canva.com/EAEwJpQuX0M/1/0/1600w/canva-dark-blue-%26-yellow-modern-jamie-completion-certificate-bi48QxAlV9o.jpg",
    "https://c8.alamy.com/comp/2E4A0FX/modern-certificate-template-certificate-design-certificate-template-awards-diploma-professional-certificate-2E4A0FX.jpg",
    "https://png.pngtree.com/template/20210609/ourlarge/pngtree-simple-and-elegant-certificate-template-image_533282.jpg"
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Certificates",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: RichText(
              text: TextSpan(
                  text:
                      "Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur... ",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: "read more",
                        style: GoogleFonts.poppins(
                            color: AppColors.gradientGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w400))
                  ]),
            ),
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: CarouselSlider.builder(
                    carouselController: imageController,
                    options: CarouselOptions(
                        height: 140,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index)),
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      return buildImage(images[index]);
                    }),
              ),
              Positioned(
                  top: 50,
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.gradientGreen),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: AppColors.white,
                      onPressed: () {
                        imageController.previousPage();
                      },
                    ),
                  )),
              Positioned(
                  top: 50,
                  right: 0,
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.gradientGreen),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: AppColors.white,
                      onPressed: () {
                        imageController.nextPage();
                      },
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CertificateDetail("CERTIFICATE NAME :", "Personal Trainer"),
          CertificateDetail("EXPERIENCE :", "4 year"),
          CertificateDetail(
              "ISSUING ORGANIZATION :", "FITNESS TRAINER / NURTIONIST")
        ],
      ),
    );
  }

  Widget buildImage(String images) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          images,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
      );
}

class CertificateDetail extends StatelessWidget {
  String title;
  String userdetail;
  CertificateDetail(this.title, this.userdetail);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: AppColors.gradientGreen,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            userdetail,
            style: GoogleFonts.poppins(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 2),
          ),
        ],
      ),
    );
  }
}
