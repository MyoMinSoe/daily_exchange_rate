class LatestRateModel {
  String? info;
  String? description;
  String? timestamp;
  Rates? rates;

  LatestRateModel({this.info, this.description, this.timestamp, this.rates});

  LatestRateModel.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    description = json['description'];
    timestamp = json['timestamp'];
    rates = json['rates'] != null ? Rates.fromJson(json['rates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['info'] = info;
    data['description'] = description;
    data['timestamp'] = timestamp;
    if (rates != null) {
      data['rates'] = rates!.toJson();
    }
    return data;
  }
}

class Rates {
  String? uSD;
  String? lAK;
  String? sAR;
  String? iDR;
  String? kHR;
  String? sGD;
  String? lKR;
  String? nZD;
  String? cZK;
  String? jPY;
  String? vND;
  String? pHP;
  String? kRW;
  String? hKD;
  String? bRL;
  String? rSD;
  String? mYR;
  String? cAD;
  String? gBP;
  String? sEK;
  String? nOK;
  String? iLS;
  String? dKK;
  String? aUD;
  String? kWD;
  String? rUB;
  String? iNR;
  String? bND;
  String? eUR;
  String? zAR;
  String? nPR;
  String? cHF;
  String? cNY;
  String? tHB;
  String? pKR;
  String? kES;
  String? eGP;
  String? bDT;

  Rates({
    this.uSD,
    this.lAK,
    this.sAR,
    this.iDR,
    this.kHR,
    this.sGD,
    this.lKR,
    this.nZD,
    this.cZK,
    this.jPY,
    this.vND,
    this.pHP,
    this.kRW,
    this.hKD,
    this.bRL,
    this.rSD,
    this.mYR,
    this.cAD,
    this.gBP,
    this.sEK,
    this.nOK,
    this.iLS,
    this.dKK,
    this.aUD,
    this.kWD,
    this.rUB,
    this.iNR,
    this.bND,
    this.eUR,
    this.zAR,
    this.nPR,
    this.cHF,
    this.cNY,
    this.tHB,
    this.pKR,
    this.kES,
    this.eGP,
    this.bDT,
  });

  Rates.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
    lAK = json['LAK'];
    sAR = json['SAR'];
    iDR = json['IDR'];
    kHR = json['KHR'];
    sGD = json['SGD'];
    lKR = json['LKR'];
    nZD = json['NZD'];
    cZK = json['CZK'];
    jPY = json['JPY'];
    vND = json['VND'];
    pHP = json['PHP'];
    kRW = json['KRW'];
    hKD = json['HKD'];
    bRL = json['BRL'];
    rSD = json['RSD'];
    mYR = json['MYR'];
    cAD = json['CAD'];
    gBP = json['GBP'];
    sEK = json['SEK'];
    nOK = json['NOK'];
    iLS = json['ILS'];
    dKK = json['DKK'];
    aUD = json['AUD'];
    kWD = json['KWD'];
    rUB = json['RUB'];
    iNR = json['INR'];
    bND = json['BND'];
    eUR = json['EUR'];
    zAR = json['ZAR'];
    nPR = json['NPR'];
    cHF = json['CHF'];
    cNY = json['CNY'];
    tHB = json['THB'];
    pKR = json['PKR'];
    kES = json['KES'];
    eGP = json['EGP'];
    bDT = json['BDT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['USD'] = uSD;
    data['LAK'] = lAK;
    data['SAR'] = sAR;
    data['IDR'] = iDR;
    data['KHR'] = kHR;
    data['SGD'] = sGD;
    data['LKR'] = lKR;
    data['NZD'] = nZD;
    data['CZK'] = cZK;
    data['JPY'] = jPY;
    data['VND'] = vND;
    data['PHP'] = pHP;
    data['KRW'] = kRW;
    data['HKD'] = hKD;
    data['BRL'] = bRL;
    data['RSD'] = rSD;
    data['MYR'] = mYR;
    data['CAD'] = cAD;
    data['GBP'] = gBP;
    data['SEK'] = sEK;
    data['NOK'] = nOK;
    data['ILS'] = iLS;
    data['DKK'] = dKK;
    data['AUD'] = aUD;
    data['KWD'] = kWD;
    data['RUB'] = rUB;
    data['INR'] = iNR;
    data['BND'] = bND;
    data['EUR'] = eUR;
    data['ZAR'] = zAR;
    data['NPR'] = nPR;
    data['CHF'] = cHF;
    data['CNY'] = cNY;
    data['THB'] = tHB;
    data['PKR'] = pKR;
    data['KES'] = kES;
    data['EGP'] = eGP;
    data['BDT'] = bDT;
    return data;
  }
}
