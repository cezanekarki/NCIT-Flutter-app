import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/teacherhome.dart';
import 'package:project/studenthome.dart';
import 'forgotpassword.dart';

class loginpage extends StatefulWidget {
  const loginpage({
    Key? key,
  }) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/2.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(
                  image: NetworkImage(
                      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEX////+/v44NDH4+Pj09PT7+/sfGhcAAADa2toiHRro6Ojv7+/s7Ozk5OTS0tIlIB3Kysq7u7tMSEYzLyxAPTtiX10xLSlzcW9+fHo9OTagnp14dXVEQD0QCAALAABNSUccFhJbWVepqKZUUU9qZ2VeW1orJiNubGvDwsGwr66WlJOhn56OjIuEgoGJh4bFxMNyx6BSAAAXpUlEQVR4nO2diXqqvBaGI1MiMyqCKMgkGga9/7s7GUDB2l1taWv/47d3H3WJYb1ZKyEJiAC89NJLL7300ksvvfTSS0+mSau7je8U8Oli37GOpUlPN42TfxrfsT5Q7HsljAkoc112cMvI9i9POtvkX59/oNi2XPm63DEBScmiJIkTvouLUb4YJ5133ZZ9buqbJEny5fNXxbYb3y7hnXLHBZRRWlXV6VyL3GhQoyNejPR9m9gqU+57TV5oOAgCrPWriG5sVkEwKJY+RcQYnM7V0ZVLjP1yRwUURVQ3vu83B1nsfCFGtfap8Nkok2c23dBvkChyV7hZLNmmpSj23BZl1Pjr9dq3B8Uialv7/X2RpyduRbIoj05Idiqma6aj3rrIvMbM5vnG2SiK2tFjCqQWkW9qc6tni30WqeTWRus2pvsq93tvv983+qUEUm6zZ7rU0YiAsijpjbdmvpjSGUbqYPaOyH2hW5r7lsWQzpEVJTGgZuJgQJ6f4y0ZHnc7N1u/h0bpUpsSynNm3KvcOiohqWsj527njsR3QHeqrlld7/OUG6lNsvPWP9QFkZlrbs5r6VJFxG2Xm127VwJhYXIPUlsb1HpwWyvi1hEBWbSQ2/rtaNQVmbqinSu70miWceOp3dJFWstCrdqxdfuoaRe3SbEdTK9YszM62qU2NWfXWk1uHZGQJemZEOutL9TotW4HrZE4ol/qWtcu/ulnQv3itqaj1u3doSuBGO22hJ1z2ZemOzuXaWe35Y5ISMs/VzbuwaB9ayx1naYk96Tzz9QvcdHVhpvdRtUv0dLNhLudOL1i7ZYlwQPCblNb18ZM0zabVLPLEawyGJEa0b51u1TpXokISlfXidmx0E0JIY9Ao6oXt9UL4blYXbWTHVPS7otbcWe1Wbkj9aZdh6CfXdlhg8NIxIjy1lgaKjdqunGua5Nj88ow/J27I+yJzzfl+aiaGXc7c7piifGU7BKqrNsXs+Is4dYTr7kxENsRBvP7XNkp9VAigNTYEiaEkPhCRFCczmmbb8m5DZ+HgBBe3FYNu3PbORerGqfOiNsSmPVCaHRN+YuM3QhKpJVt0Mp2WeacYXQD5a3bHaHGCHkIMvOKkPt3JmRum9seYVdHp6wV3xcPoYG33LilMWRZ8EXGbiwvqnZa+7mbtCKZtmuf7c7GNq2Gz/pPKQT5T9W+Oj9mrTU7P81uPT1rm3hNZRvim5nKZwIoypJd7uluttuzo9uess44u2jbuTIb6OzhZra56GzuGzc3jbNup+TpbOvWtiR/IVXbsaRsH91sy/Yza6sz2d5ypW88O71ZLFrTgqgD3y76OpewWV20OLOsbllXK4G8mmV0uP7ZHqcF1MvduRpnt2A+IOy0oIzvEN6CuU1IN2XZwF4JwmqT1br8OcR2hG96vTR5jHBLcjnr2QhLl2SzOwi7zF6sblk7A2GkA/ZPHBpbwFN+E2bg4ZY1UeL2VV232dTXmVDoa3V2+yPjnFtJK6ZbtHFcJKdPILaA9q4L4ELYuN669XCW+xetO693PeO+889jm5A5q0/++13Hk/nrnrwN93uT94z7rlbddiOqtXu2JvNiLrRhzB5H7FK0K3Cx8U8aAJLAYRZOb1uxdXtT9oxmGwJBH5S7bvvQ9cCqz/leBLNnNFat8dDf9DDneSMYQD+s50uBRVHI2kR9hJBPQtsICo3BzJrQJk6fUMp4CBZ9Qlvgn5yrg3I93rEuvIFVXbJWupnbPSMSOMu8vy/gtIRzxGrBLwRGKOTGYzPidrpZdina7USb3yJsW+rqFuHyipAHZnVFWHC3lwPC+YraVleES976lqh9TZoja7Wl9NBAnI+0zbYjnJ2TR1u2Mf2YcP4O4YJ2qTcJidtXhJxlSFgMCUlz4H3QxpYeyNN2vuq3EUTnN7Sizb0B4WzBkkwYEC55WIoh4b7tG/ZDQou7XQwIl9z14oqwtZ6dQnPey661B/KU56g5exMvrUsn3Cdsj2Lzuk/Y1rV1Rdi6c0U45W5bA8KCbTu/IpzOmaxLtbfQK/v+lZs2hCXrFRZ+7x2trewrQuEWIXd6epNweUUYtxtfEXKWW4TL6YUQeCzay2516z5COm1zr3OUEE7bdBpk6Yb7txwQWtyoDAlznnrLfGA1Yg6jDAitJSEhLEPCeMmk9Nxq8zQz7l7X4CG0N29CCMQWxupjgy3fQ9EPLLK400ttULTPA1MMSgV6wd2OB7W55Na4f5AEKCyYLLFn9JgDS1u7szvlC2Bayjr2wXEBgCNLvuWsXz4IeOYUg4N7xlis4aEd2CHzOrSHZm9KrcV2YNwrDGUhD5ybTak1HqQ55mnKVzPvI6Tz6YYfnI3Be+omJjuNBsMM0pnGVmHBdGA0oWJZ8XL4ccICp9Mp9K6sRhEqSgwH0SL9DzMO9wVsGMZxGA/KNXjq+/cuv7XNkI8LE2n4ppau/RpdfUJM/XVtXhlRuV5XOriWQ8anzhurXnleeV2sVK3fGoFRel4wLFfasl7XVR8h1A3e0eQfbv4M2s15V3PfAiMbsWm6kTDC/QdbP4dcRrhl6+v3EPKV9uQPxbBHeEeats0Q/cUY3tcQO8LsD8bwRcj1InxGvQiH+v8m1HTxnU/9u8g7txN17c4p+lWRXyHsHw+N/UqYlRPQ0DVhn49Dc/LUJSNDXZcJ/9thKBWebYM73JbLxVJIroe3xK7rwykYMLbb7aCqR4qhnCjF1ApLkCtFrMQLiiMLU8sqRNAUsT1ZLMObJVZRWN98Y6ggUuI4vloUIDKn1mJoQWEcjkW46BGaSrExi0IAe0upciukta3SyZqC1MSKa2dZhA7Q6sWmFIFdlodSOMqgEtZHJa6BVJLZNAJ2XeJSaEjUyxXdDiBvlbF5l7hRopNHZ0v6cbEqNWDWpVPOG1DFSmEf6tpsbIC3wt4EiFTwdxAe4mKmL4tC21uxEyhsFmsS2zy0HVgUUTYtrELehJYVLiYpjKexFaUmtJS4iGu5CKckRFoAyeRuCrEoRNNpNCPTyHiqwIYSLqYQ1XEYgGWoxNFKwjBUQgXiLLbCfQ2jBTSPMFZCaBvfROi0hDohxM00shm1tV/FWKYmY16ExilSyqMSHnCsHGslLuljGcclISnLODKreLoP4rhxQsVNyetjHOJdTFfkGOERwvIEY78MoYOjeF+FYXmKlbleh5YCD4VSOGGcqN9IqHLCYl4Uezo3rhQrWClr4E9DWxYKCHAcp6USp+SxSmNKGJfsEUInjUPyp6xxqPjkzyO2Q66EjqsoJic07SAwcRSWThSmThQfyeOR5KQA6nAaz0h1FShUip8gFArrSAvylam9mrrkMTwxwjQuiqkSUcKgR1iLhl0urRBTwpQT7mXDEF261hFHp5aQ7ucdwtgHKFIKM1SsHyCMnaMSUXf20wJtrdmkR2glzbGx0ytCUFvRxorTPiHzTVHcpmlQS3gqS/sdwrD6dsJDn5D3NGJmFdt5oeg9QtIg8/3hKoa0HTY0g3uEnrlLzFyJ7Gq/N3vt8B3CKP12Qpv2NEWxlC6EOmmPoUU6mEbp2mEYYxO+ydIShyRDwyHhIYInSuiFrLY20wgd4whzwgjfIAxZO5x/FyE59gmlFWcgPxMa5Gh4oi8b0m1qC3KMJH1pU5EepSN0CBE5HpakC6ybcwzjtRlOkyCGqAzDNInp+Rt5R5J5q0DzQPrShhwXcUtIjg1LgxGKpKdJw9D7LkKagdNirQOXdOVlBAnhKYwLyY+ikhz+oOORY53hRWEYuSCFMKggrI0ojooQ1iqMo2UIqwpGXgqjPdjDMIQ+MASyPax5joQwhN5E3sAwgq5MutrGIX+yAGHSQLoeS46KEQwNA0bwWwiBRvqRIxadoERkzGLQNdEgBQcyfAGoKhG9jF6ckJd4AkzSZZC/ExnEODZ/xOTRJDaH/oGJQz9GxjZpTd7lSVLWNV1KlTB5lGkRJ0Q3kpwSk1Jpz2aXdaUDrSzLAcZYWWoYqCBDClNVVYP+EbVPVfqMv2pfsofu3cvj+RPn7c6PxhvTYNN2o/M7g8H4SISl7zc1UeP/uLrrMy4Wb7BuPlqWPq1ehEO9CJ9RL8KhXoTPqBfhUC/CZ9SLcKh/EiKTiV8gYai6KiGZm8zb690/oy8Qrq4I3Sgms89ow140QVqfEjUMYyKIb5T1UxqRMHcAvfAoo1MpEGCn2IvGYqJpOqh/n3A2CiHG8XStZZONFZuarmq2py6kaRHbA0LR+F7JQ69GJWRLuoSQLowFdIUPGAsptsLTgNCOisIi/x/R9J9S+oqvryVjhPNRCF2HLrLQGMbIg0EVoJzEEIbwcEX4ENzHgEPI8BsJcyzS79URQhPoalk6K1dfiKpqgON1DG9pHO7RYri4FcMN/S5lNptsNA/hCqd4p1rsq/fLOwgfBvwFQtM5UNmy4MWoDjTD3oLT6XA4OU7/zKYNP+3+P5rf6Fl6ixAbqErTAINTARu7Km3dlsqgDK4uyLTD21n6rh7qlqbfGUNbrWC4OdkAO/bsuHMN1ZGdGAvVm3PTP6oRCQGoQmvnOPgoncosWh/qDBxKcYuAeV2vP6kRCQ2EF3FsJVAEuVFmmbAuD4UJSgOkp2/z/2ONSLiDjr3OZybUAJLrujyqOixyG0lA/fWR9ziEdUEOiAd350pgaeJisU3MZI92MdK9Xx+XjtQOG6eC/CqiOUnO6gRzMJmpibGFby9P/zmNSXgMa2Ba82Je6F6c4nCvJkCKDJD9ZwiboGzsGQqRq5OZlJy6siHNCGES/WcIwzicRkW0QiAz6dULQmFFobp2BuNSEX1lboQ+1M3Z00iEUuuEpQG9nDknmJEXUNfywRchbRjfp/AziuA3jmkC/mX1NUD7LZL2ywDvJFeKN0YyaIefmD09Mkodb1y6eDu3qEmOmIctqO2CPPinvQsQIHTXhJ+dTNxDO+LcYrF4Q4gRmRRK2WRVx2a9q3K4CoI6Uh0hGpHwo1CORri4MT/EfI4PNrDWTBMF6REqAVTJVOOa8NFVjDvxxo3hTcIo9Mgcf1UBG9Mpk5hip8TSIRv2NFFfMIL0/3gaiXB1k/DkeZW0BY1tbreObttkVjGXjlerGJL5vbq+2nxMwkAjMmdA8mbQBM4280230CT1T45LbxHW9E5d7s6feBo4snm9uibP1+QIcrhV2A9pRMJ/fe5rTn5JP0P4m3oRDtUjfHvEf1J9lnDxInwavQiH+j8nlDQu/oLefUqbcMvnvrc3kkYk9PjMPGEv6gpXZqbP+Vz9D67T3CJ0A11VVcRvQnIMcLSXDAHRi5LXf3FceosQk8F2TeYW+XaGNFEysKeupCybmcf/DCGbH24nixginCSOrBorKVSi4Vlus7vh5/couz7TNS4hhHtKGKb1wluXakViSKa3zvA8Prw+qXnn2tt9C3TRWDPgm4QGxra0nWwqcMJBkO4TdSVjjMXhefy7zgHfvWzRX2cbc63tJmEeEB1nk5VWqWaQ4uNOLSpCiLNvJpz+EGHaMAWygKeoDsyTmYn1kahp+l/CHuk8vvI2fN9OaMhs0VuXG9L0cIo0VAO6zG4Ob7Z0tRL1Gf3IStQNwtquIFT2R2DUfozXU0dU9Ry6cTb8Gr1kf6/GWom6OS6tQiVXDeRquj8PjzrOgJFLGQK6dKuwH9KohCmcTuMo1oFlllYRWp62kkFigv/KET8nra9YZhrUgAzqIC2BCpWlPqG/I/Nt/n+sEQn3EE+kU7GYamCLyuVy7hlwgzZz9ATXl45DqHkOttZs+jQ1gV/jkAy9d2iDvP/K3AIchdpw3F2euHaTBekqsX1gZKe/eR7/JmFTBxXanKLTQs8rSatzgMCaHJ/+5LUYtwmzTHCtdeSfJvRWMs688ddkJJymw/MW8uQ7dX0a/yuEwjWhnTIFoQacNEAHuKrSCuqnOunH0DzfFP9+sV9UmN2lzWhjmtUbwkPAhEEVlLq9SKrGBakcNdKwHb6dPV2mUSNMpEabPdGbNl/PLdygLMt6A5wqMlGeOMFOrgiheE349bnErSH32CPvW4RYQkgl88O5XZi1QBI0I8NuqOqb+winjwD+EmE3x4czI8WHWTKD0RaqZfwh4ZSx3QeovAv3E4R8nWaViLpBB9vaNjc25OA/HRLee/HP5yZW30qIhVVDCDOkuRZmNxpTN1qOQNM/WqhV+q26nseMSkjP9WozAHYxPAEcW3tNKOgO/+Tc4hYhu2H4dCPPDDmzAf35yUwTtJ1V/P5318YhlFoBEjaRl6SRf7r+5r54P6oRCZ9UL8KhOsLti/CJ9CIc6kX4jHoRDvVPwpL/IGfDXqTOwTEabc9t9o2yfkojErprx3Fw1d5xoEo3pW0UKbE52d8btd0m5Feyz0BQ16ptGEGZqiuRTPv1PzjyfoeQzYBn8jyC9P55puYYK/pt9dOAEHW/O/5Nuv4m4MiEkafP5FW4xnmWlaJJCeMrwt53Zj71rZgPNNIM+B3CU54H2lZeuXK5S6sgzfSVmO9d44rwgdWYf63IfOsqxla4RUi/M4OcmSxISJbqwNm4+tykp4X3XyB8jG9kQnf4ZrPh9zGXBbMw69RJzUzjv5y76V/J/ocJAaAr6hMgbuIIBSkAZgLYj6EPf6n+C+fxf/AbJTcJWU8TxVsw2S2hWcMAAGNKOpqr350yguofCnrPgk/pej1hREIRVFGcS5KUGWI+L47A3gN9pW7Nv3gO+J0sreB0nm225iQ5NJGwXe5E1wAzE5R/7+zaTcLSxUcYbuxI4t/H9w17q7iyKgL1761E3SRMIJYQjnOoAd+os9km0OD0kO8NgP/ePRVuEqKdY3u1bZsAxKbursuiNE/HwxIFwh8cl95sh8d1kNIr9VIcpLhM/UXqAPJU/Itnud8hzGoTWT70p1ruIjPbyyXAUP2T5/FvEzb+elbOcYgDcUfP42/IdJGMhM3j7L9CiL21T/55kUaOD2TuBAvPW0O1woMrFdD6/TtXj6GRZk+3CDV+wwF1ktiIHBobvHKBMSEjmi381PnDT2msOw7cPloodOAtrIC2hybw4/SUaIkUzdXr8/jvjbEfH2b/8MjbxRNdk+gMGM1RGQY4TERdh4Z8HcORZhG/QYitwieEwjJEdYDjWJnP51BtwrsIxwH8ZsIUhnQVQ4gNQGZNkmjCpUraxey/0g7ZShQlXBqgWbHuU1NzlCNxPVyJWn+rvrEvdbGISDkzcjxI4lR0suwouoVo/Mnz+Lf70plPDofuYnJ0ToIN1JPt+IdCqr219R8htB2m08SRgc3mS+IBHGSHjFTf/PjyD2rUGfBT6v+F8OE7JTPC3Y94+FUljDB7jNBwGeHsN78ocq+kGSPcGY8RenNKKPzmLS3vlcFuBb3cP0hYL+mJi+VvHgTuFS4oYVE/SOgUlHCe/+Y66H2a5EtG6NxPSH893jA3rCHO3/6467PJZIDCxjTu+/V4HkTdMNZzFsTn//14HsLl2jB0FsK7CWma0uA/e0vEFguh5TxGSBoi2rEuSpg+d56aCvNyuUN3NsNLQ0S8iyIHmt+8kOQj2XMehwKje5shJyRpipDHm7AgpD/g6ueUdoAeQixJ7yG8pOlpxj8uFPlzZqqZd2m2Od2fpL00RbgL4rzYYVV8pkPjRFRxUrT+zZcY3Z+k9NNyG0SUWsKZsdi433uVzEPabaxi3vlmpegcwvsIz0E0q2VXDC3prOWva37xa1lU5mMhBBPeEgmiaeJZITy3ig02TQp4fwi77pTmqWkevC7bn1KF5R0oIMvRe0PYBpEcMRiinSbKk8ZxXihJajNAcqS4O0cviBpFZIx5YRU0959IS3qP25zxUcCHcrSXpx2ifar83XbxTNomfnWy+4CPhJAHkSaqRn8FmDESSueZdKIuMT7aBh8G7CHqLSOnfCKxH4CjfDSAjwP2ETkjQt98c+BHRV2ifJ8FbBFJY5Q0Ekf1vhve/6DYuWgSv47vM0PKSRdGyqjrl9/PfgYRb+hXAmkL/DTgJYwUkt0xUX8eUXckid268QuAXRgZpCg9m0SOx+5Q8VnAlpFBMsqnktzhfXFW191t4xnV+vY1wD7lM2rE+4j/NsotjQb30ksvvfTSB/of0UgbYpjMZq8AAAAASUVORK5CYII="),
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 30),
                  child: Text(
                    "Hajiri",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign In",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: TextField(
                    controller: TextEditingController(text: ""),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 1),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      filled: true,
                      fillColor: Color(0x00f2f2f3),
                      isDense: false,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: ""),
                  obscureText: true,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 9, 9, 9), width: 1),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    filled: true,
                    fillColor: Color(0x00f2f2f3),
                    isDense: false,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => attendance()));
                            log(
                              'button pressed',
                            );
                          },
                          color: Color(0xff353535),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xffffffff),
                          height: 40,
                          minWidth: 140,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => teacherattendance()));
                            log(
                              'button pressed',
                            );
                          },
                          color: Color(0xff353535),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xffffffff),
                          height: 40,
                          minWidth: 140,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
