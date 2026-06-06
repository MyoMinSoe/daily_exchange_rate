class OldRateModel {
  String? info;
  String? description;
  int? timestamp;
  Rates? rates;

  OldRateModel({this.info, this.description, this.timestamp, this.rates});

  OldRateModel.fromJson(Map<String, dynamic> json) {
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
  String? vND;
  String? tHB;
  String? sEK;
  String? lKR;
  String? zAR;
  String? rSD;
  String? sAR;
  String? rUB;
  String? pHP;
  String? pKR;
  String? nOK;
  String? nZD;
  String? nPR;
  String? mYR;
  String? lAK;
  String? kWD;
  String? kRW;
  String? kES;
  String? iLS;
  String? iDR;
  String? iNR;
  String? hKD;
  String? eGP;
  String? dKK;
  String? cZK;
  String? cNY;
  String? cAD;
  String? kHR;
  String? bND;
  String? bRL;
  String? bDT;
  String? aUD;
  String? jPY;
  String? cHF;
  String? gBP;
  String? sGD;
  String? eUR;

  Rates({
    this.uSD,
    this.vND,
    this.tHB,
    this.sEK,
    this.lKR,
    this.zAR,
    this.rSD,
    this.sAR,
    this.rUB,
    this.pHP,
    this.pKR,
    this.nOK,
    this.nZD,
    this.nPR,
    this.mYR,
    this.lAK,
    this.kWD,
    this.kRW,
    this.kES,
    this.iLS,
    this.iDR,
    this.iNR,
    this.hKD,
    this.eGP,
    this.dKK,
    this.cZK,
    this.cNY,
    this.cAD,
    this.kHR,
    this.bND,
    this.bRL,
    this.bDT,
    this.aUD,
    this.jPY,
    this.cHF,
    this.gBP,
    this.sGD,
    this.eUR,
  });

  Rates.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
    vND = json['VND'];
    tHB = json['THB'];
    sEK = json['SEK'];
    lKR = json['LKR'];
    zAR = json['ZAR'];
    rSD = json['RSD'];
    sAR = json['SAR'];
    rUB = json['RUB'];
    pHP = json['PHP'];
    pKR = json['PKR'];
    nOK = json['NOK'];
    nZD = json['NZD'];
    nPR = json['NPR'];
    mYR = json['MYR'];
    lAK = json['LAK'];
    kWD = json['KWD'];
    kRW = json['KRW'];
    kES = json['KES'];
    iLS = json['ILS'];
    iDR = json['IDR'];
    iNR = json['INR'];
    hKD = json['HKD'];
    eGP = json['EGP'];
    dKK = json['DKK'];
    cZK = json['CZK'];
    cNY = json['CNY'];
    cAD = json['CAD'];
    kHR = json['KHR'];
    bND = json['BND'];
    bRL = json['BRL'];
    bDT = json['BDT'];
    aUD = json['AUD'];
    jPY = json['JPY'];
    cHF = json['CHF'];
    gBP = json['GBP'];
    sGD = json['SGD'];
    eUR = json['EUR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['USD'] = uSD;
    data['VND'] = vND;
    data['THB'] = tHB;
    data['SEK'] = sEK;
    data['LKR'] = lKR;
    data['ZAR'] = zAR;
    data['RSD'] = rSD;
    data['SAR'] = sAR;
    data['RUB'] = rUB;
    data['PHP'] = pHP;
    data['PKR'] = pKR;
    data['NOK'] = nOK;
    data['NZD'] = nZD;
    data['NPR'] = nPR;
    data['MYR'] = mYR;
    data['LAK'] = lAK;
    data['KWD'] = kWD;
    data['KRW'] = kRW;
    data['KES'] = kES;
    data['ILS'] = iLS;
    data['IDR'] = iDR;
    data['INR'] = iNR;
    data['HKD'] = hKD;
    data['EGP'] = eGP;
    data['DKK'] = dKK;
    data['CZK'] = cZK;
    data['CNY'] = cNY;
    data['CAD'] = cAD;
    data['KHR'] = kHR;
    data['BND'] = bND;
    data['BRL'] = bRL;
    data['BDT'] = bDT;
    data['AUD'] = aUD;
    data['JPY'] = jPY;
    data['CHF'] = cHF;
    data['GBP'] = gBP;
    data['SGD'] = sGD;
    data['EUR'] = eUR;
    return data;
  }
}
