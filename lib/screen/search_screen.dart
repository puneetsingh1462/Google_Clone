import 'package:flutter/material.dart';
import 'package:googleclone/colorrs.dart';
import 'package:googleclone/responsive_layout/widgets/search_result_component.dart';
import 'package:googleclone/responsive_layout/widgets/sfotter.dart';
import 'package:googleclone/screen/search_header.dart';
import 'package:googleclone/screen/search_tabs.dart';
import 'package:googleclone/services/api_service.dart';

class Searchscreen extends StatelessWidget {
  
  final String searchQuery;
  final String start;
  const Searchscreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Title(
      color: Colors.black,
      title: searchQuery,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //web Header
            const SearchHeader(),
            // Tabs
             Padding(
              padding: EdgeInsets.only(left: size.width <=768 ? 10 :150.0),
              child:  const SingleChildScrollView(scrollDirection: Axis.horizontal,
              child:  Stabs()),
            ),
            const Divider(
              height: 0,
              thickness: 0.3,
            ),
      
            // search result
      
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FutureBuilder(
                  future:
                      APIService().fetchData(queryTerm: searchQuery, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:  EdgeInsets.only(left: size.width <=768 ? 10 :150.0, top: 12),
                            child: Text(
                              'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results ${snapshot.data?['searchInformation']['formattedSearchTime']} seconds) ',
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xFF70757a)),
                            ),
                          ),
                          ListView.builder(
                              itemCount: snapshot.data?['items'].length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                       EdgeInsets.only(left: size.width <=768 ? 10 :150.0, top: 10),
                                  child: SearchResultComponent(
                                    desc: snapshot.data?['items'][index]['snippet'],
                                    linktogo: snapshot.data?['items'][index]
                                        ['link'],
                                    link: snapshot.data?['items'][index]
                                        ['formattedUrl'],
                                    text: snapshot.data?['items'][index]['title'],
                                  ),
                                );
                              }
                              ),
                              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (start != '0') {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Searchscreen(
                                    searchQuery: searchQuery,
                                    start: (int.parse(start) - 10).toString()
                                    )
                                    )
                                    );
                          }
                        },
                        child: const Text('< Prev',
                            style: TextStyle(fontSize: 15, color: blueColor))),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Searchscreen(
                                    searchQuery: searchQuery,
                                    start: (int.parse(start) + 10).toString()
                                    )
                                    )
                                    );
                        },
                        child: const Text('Next > ',
                            style: TextStyle(fontSize: 15, color: blueColor))),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Searchfotter(),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
      
            // pagination buttons
            
          ],
        ),
      )),
    );
  }
}
