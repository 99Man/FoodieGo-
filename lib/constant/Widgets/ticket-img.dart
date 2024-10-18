import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/UI/voucherconfirm.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Ticket extends StatelessWidget {
  final String status;
  final String date;
  final String price;

  const Ticket(
      {super.key,
      required this.price,
      required this.date,
      required this.status});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation == Orientation.portrait;
    return Stack(
      children: [
        17.heightBox,
        IntrinsicHeight(
          child: Container(
            width: getWidth(context),
            child: Image.asset(
              "asset/icons/ticket.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: isPortrait
              ? EdgeInsets.only(left: getWidth(context) * 0.13, right: 17)
              : EdgeInsets.only(
                  left: getWidth(context) * 0.15,
                  right: getWidth(context) * 0.08,
                  top: getHeigth(context) / 8),
          child: ListTile(
            title: Text(
              status,
              style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2F2F2F)),
            ),
            subtitle: Text(
              date,
              style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9E9E9E)),
            ),
            trailing: Text(
              "\$${price}",
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF00AB59)),
            ),
          ),
        ),
      ],
    );
  }
}

class VoucherTicket extends StatefulWidget {
  final String status;
  final String date;
  final String price;
  final bool isSelected;
  final VoidCallback onTap;

  const VoucherTicket({
    super.key,
    required this.price,
    required this.date,
    required this.status,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<VoucherTicket> createState() => _VoucherTicketState();
}

class _VoucherTicketState extends State<VoucherTicket> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    return GestureDetector(
      onTap: widget.onTap,
      child: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            IntrinsicHeight(
                child: Container(
              width: getWidth(context),
              child: Stack(children: [
                Image.asset(
                  "asset/icons/ticket.png",
                  color: widget.isSelected
                      ? Color(0xFF00AB59).withOpacity(0.2)
                      : Color(0xFFEAEAEA),
                  fit: BoxFit.cover,
                ),
                if (widget.isSelected)
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 26,
                      height: 26,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Image.asset(
                          "asset/icons/tick.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
              ]),
            )),
            Padding(
              padding: isPortrait
                  ? EdgeInsets.only(left: getWidth(context) * 0.13, right: 17)
                  : EdgeInsets.only(
                      left: getWidth(context) * 0.15,
                      right: getWidth(context) * 0.08,
                      top: getHeigth(context) / 8),
              child: ListTile(
                  title: text(
                    widget.status,
                    15,
                    Color(0xFF2F2F2F),
                    FontWeight.w400,
                  ),
                  subtitle: text(
                    widget.date,
                    13,
                    Color(0xFF9E9E9E),
                    FontWeight.w400,
                  ),
                  trailing: text(
                    "\$${widget.price}",
                    20,
                    Color(0xFF00AB59),
                    FontWeight.w400,
                  )),
            ),
          ],
        ).onDoubleTap(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VocherConfirm(
                status: widget.status,
                date: widget.date,
                price: widget.price,
              
              ),
            ),
          );
        }),
      ),
    );
  }
}
