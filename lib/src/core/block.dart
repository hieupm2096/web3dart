part of 'package:web3dart/web3dart.dart';

class Block {
  Block.fromMap(Map<String, dynamic> json)
      : difficulty = json['difficulty'] as String,
        extraData = json['extraData'] as String,
        gasLimit = int.tryParse(json['gasLimit'] as String),
        gasUsed = int.tryParse(json['gasUsed'] as String),
        hash = json['hash'] as String,
        // logsBloom: json['logsBloom'] == null ? null : json['logsBloom'],
        miner = json['miner'] as String,
        // mixHash: json['mixHash'] as String,
        nonce = int.tryParse(json['nonce'] as String),
        number = json['number'] != null
            ? BlockNum.exact(int.parse(json['number'] as String))
            : const BlockNum.pending(),
        // parentHash: json['parentHash'] == null ? null : json['parentHash'],
        // receiptsRoot:
        //     json['receiptsRoot'] == null ? null : json['receiptsRoot'],
        // sha3Uncles: json['sha3Uncles'] == null ? null : json['sha3Uncles'],
        // size: json['size'] == null ? null : json['size'],
        // stateRoot: json['stateRoot'] == null ? null : json['stateRoot'],
        timestamp = int.tryParse(json['timestamp'] as String);
  // totalDifficulty:
  // json['totalDifficulty'] == null ? null : json['totalDifficulty'],
  // transactions: json['transactions'] == null
  //     ? null
  //     : List<dynamic>.from(json['transactions'].map((x) => x)),
  // transactionsRoot:
  //     json['transactionsRoot'] == null ? null : json['transactionsRoot'],
  // uncles: json['uncles'] == null
  //     ? null
  //     : List<dynamic>.from(json['uncles'].map((x) => x)),

  final String? difficulty;
  final String? extraData;
  final int? gasLimit;
  final int? gasUsed;
  final String? hash;
  // final String? logsBloom;
  final String? miner;
  // final String? mixHash;
  final int? nonce;
  final BlockNum? number;
  // final String? parentHash;
  // final String? receiptsRoot;
  // final String? sha3Uncles;
  // final String? size;
  // final String? stateRoot;
  final int? timestamp;
  // final String? totalDifficulty;
  // final List<dynamic>? transactions;
  // final String? transactionsRoot;
  // final List<dynamic>? uncles;
}
