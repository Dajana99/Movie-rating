-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2021 at 01:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmovipregled`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmovi`
--

CREATE TABLE `filmovi` (
  `id` int(11) NOT NULL,
  `naslov` text NOT NULL,
  `zanrovi` text NOT NULL,
  `scenarista` text NOT NULL,
  `reziser` text NOT NULL,
  `producentska_kuca` text NOT NULL,
  `glumci` text NOT NULL,
  `godina_izdanja` int(11) NOT NULL,
  `poster` mediumblob NOT NULL,
  `trajanje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmovi`
--

INSERT INTO `filmovi` (`id`, `naslov`, `zanrovi`, `scenarista`, `reziser`, `producentska_kuca`, `glumci`, `godina_izdanja`, `poster`, `trajanje`) VALUES
(1, 'Soul', 'Animation, Adventure, Comedy', 'Pete Docter', 'Pete Docter', 'Disney', 'Jamie Foxx, Tina Fey, Graham Norton', 2020, 0xffd8ffe000104a46494600010100000100010000ffdb00840009090a080a080b0b090b0a0b0b0b0e100c0a0b0d13171510140f1612120e16120f140f0f1412141813161419201a1e19182b211c24131c1d3222332a3725223001060b0a0b0d0e0b0c0c0e0e0c0d100e1d140d0c221415170e1e08170c10161011170b1013140b1119111e09190c0822181d140f1d100d0c0f16100b1415231618ffc2001108010c00b603012200021101031101ffc4001c0000010403010000000000000000000000000305060701020408ffda0008010100000000bc4000000000008cd5c0600c0006f8d75bec209e7b5d0ce8b6985354b75b5786a59bf4f62648179d5d5c14d0354d4db3c2df21df119e5f65648079c738319c9a99c0672652f680403cdaf327ec420bd9c928ea6ae1715635cc09fb482bff003d4ba0abdb71e66ea8ff0002fcc2ce8d009fb4420148a91a5dea66caf2c8cbbc7658d7208567297b3b240292cb076cc6cdaeb82d1add823b388fbcc3f612f666480519df1c71b2a70c715b2abe85c765eccebdf196c4fd919203e7c94b369614aaaf46d089b3c3a43cae76ad7d014fd8d9207e76ec7f947045a3ca3e76bfb127cae535e57facfd339209e7bdf57a9755a90e5d475a63e3db2cf2b5f4d648379f642c5ddd8c2da483896c1daedc03845fd71921140bdb64a60aef1ac4d9359945dd904f0d3eb408550ae6af744fb23249a5dd8d1c0d1a9a897ad421744a99c7220ca3d5dd085b85892c6a25eb2c90ca2f6d819d972fb7fc02c5c230eaff00184bd6210ea377ce44a34e0ff6ca53956a68ec516d53f566487d1fbe7698432336c446cb65efe01085984bd52110a4fb11b02574b472deacef35168cc3a2dd7a89fa882254bdb13c39e818f5e1475dbdcdb1181bb1ae13f4d84569b97d87ce546cb7679cef92b8dd2c63184bd26118a7ed27b554a91b2dff0037596d234b969b6b84fd1011b89cff00a77deab63b43cedab64c3bb47d59a79d5beb23140671d7c3c75fb149ab999218ae736449d8d89e2fbc8c147caece57681436ccf3bcd1ddba19209e76d63c67a8f245bcf167392abc0a313caf2d49ec6154de186a0c21eb1084f9cbd093f35a73676a575f58f2b471f7af51c110f5e648ed41329ee89228442abb7ddc47979d26868c5ff90035439b9d1e4dfa56c3965700001939d15915d3dd34baf5d36ea7a000c69cca2d8d05924154c3a140000000000000ffc4001b01000203010101000000000000000000000405010203060007ffda0008010210000000b9d1ef47bd68c06dfa1ce3d1eb5350146af9cad0f29f6b75eb74ef39a6fc9b7d0b25580b74fa2f27c9183768e688425baf5c4f1391bd9489cf8e0ebd40d973faf4db314c941d7b73f8757b9a731f73cbb67be05417a685c84bf67b39019684e9a00bb776bf6cef1565e5aac87eb6c358f366152821989b4d0b094760b1390f41a4852a19f40bd56ac41d6f91336f081fbc5ef69b654172f7bdac4c5a3d4afbffc4001a010002030101000000000000000000000004050102030006ffda00080103100000008167bbbba275d68aafdd3d17c8b32aa903563789a41244789f51e73db27e0336c4915f11ea0d649d6f9edbd1184d7cdadf48c15f9e90dfbc26886d4f43925c3cf34f525e7e5127bc387c0457abb3b351c61e356987145e4a20836f9895a966e4a4c8bd692271a7e29184ed2b468962cc75c6675d006ee3c3b06e3a7374b132ed3a52985012a3b6062b7277ee131ac46972b4eeeca6263baf6effc4003010000201030204060201050003000000000102030004111012051321331415223132342041422324304043516171ffda0008010100010802ff0062f657820de9e65755e65755e65755e65755e65755e65755e65755e65755e65755e65755e65755e65755e65755e65755e65755e63775e65775e65755e657748772293a715faba00c73b7ad0ce8c197e4723dfa8ac36edb44329c351c8f75576f8fb361f92c480acacad8a5c93b1e8d45da4d78afd4d2399e2cedf15275af17351b92d132378a9685d48285d4a29ae18ecaf152fb578b97a63c5cb42771b8d33b349be8dd1ce478c9722a5b92766c662cc598d45d94d78b7d4ff4cd45da4d78b7d4d238f7752022fb51891fdd94ab15291eef77528e558461a305e4b5ce396d6b2aa96a548cc2cecd0a0e6d0b74ca538dae40d4d45da4d78b7d4a8d77b539da991efeea4ab021475aba8cee523232009487da1b2ebd16b736cd9a8049c0e4b7ef535176935e2df52a0e8a6a63e8d43495040edea768d439dab097f9cd014a8d7faab573dcd3951eccd41dca6fc0d45da4d78b7d4a8be152fc34156e9b9e87adc2d5f864ba6a4331029d3f8989313d5cf734ff009d41dca93f97e06a2eca6bc5bea543ec453f543a2d5b0f49356ff3ae2bb472b360ad2cf53fca93ec355c7734ff009541dca97d8d5b5b6ecb3cd1189c8d0fb543d94d78b7d4a53b4e9cb6fd751ef6cdd08acecf555f5d73db02cee3c3b668c88e372c47faad570b9ea2bfe750772a4ea2adc20518e20ae26ce86a2ed26bc57ea68ac5695d4d2e0fbb272d8324d33b9d0546c54d6ee5cb90483d43229a3f0a87e752745ab79971d2576e76296dedb1ebbd8390c36c5da4d78afd5d30748a4752054a7119a1d4ebfc4d7ba668311edcca2d91517ceb01bd260e4a4b84bb256ef7aa4b272798d75706e315176935e29f5741a4432e2ae5ba6da55c7a89d12332a95109fe2758fe74c0914148cd104801b7318f965fa66a2ed26bc53eae82802690051d1bd53609f851d2d4e24157d09827cd7265913991e8a70d93cc5a2eb5bc56f5a7eb5176935e27f5b51ef5b80152749735251d213ea157d15c0803cbc3977c4d4f6531625f931c60e7f135176935e27f5bf1971b01a7390358cfa855ca4cd644b70e89a55702e2d2f84b841c3ae7f99568cec7fc0d45da4d7897d6fc71918a91593a1d23539e92adc9b66ddc36295e3764f0b37efc11fdf9743fbbbb3e4fae2d4d45da4d7897d6fcae1bd55d28c6e870f0d5c9b85802d596fe5b04d93572dea7bf30ccf199389b32e154e467535176935e25f5bf18ace47f95da6c98ad28cba8ae22a5661988f5a9c4e89cd36dce08594cd20f978a51efe2a3a7b8054edd4d45da4d788fd7d0248c32b86a8ac491997c29abc5db311508ccd18abd8e6d80bc7f2a26778b698d9e1408ad7891f7659385dc90659edf8785fe922041d3535176935e23f5f4e1ec8b1367286b6466b9295c406d9c8ab6199e3c5c2dc989b703eba5b87540285d1a99a2b850b31b3b13ec91046c8fc0d47db5d7887634b44691f15e152bc337eb95703db88070febb3cf3d089269396e1aa0b9b458516595ac658c88fad75fc8d47db5d6ffb1a413451c402f8a8ebc4c55e221ae2655f6b2f0dc09f26e658cdb4983fc693874332091a7e1c9100c9ff00d505bd674c6a6a3edaeb7dd8ab48e29370905b402b930d7261ae5455c55544698e178e71cdee05a3e1bdc51b8bd1e95e75d55bc8640430f483cc59227381b72db125564f7a0549c0a4f82eb79d62a85b96f902791db03fbba3e32bfbbabee6ec1ccb4ce5b121257ab752685c461403e260ae7c6518a33934990c1aa03ba4dcb702564e5d6f439c427120a570e76d2fc46b7b8f0e6a17db0bd5b09163e6d7898ebc4455e222ae24f0bdb570d754972d78e8d0e17349c3f9aa1e870a8bf77368b6f0e238eddd977131a82055ac43dccd8df811fc9aa3ee2d038901a1ec35e21f58d21f49a48eeb928a0c7799e9c9bcae45cfeef9080a5adc6665db7ca5026026e1d20f0a21412f878b19a9ed8b480466df6c5e8481d8ef11a3f376d34124349b77744ef0a2467ac5da4d789fd5acf4ab19bfa68adadf4570d374b3b6983ee6e231bf20483766b1bd954298d502d136c7dcf85a1c84f889d54d78a5abb5872248f3839071fb8bb49adf4124f06c8fcaeeea1b4ba45dae3c485c57f7758bbad977463baaba8e4e4306b7899e514b6a01ca78692bc34b5e1e7fd722eff5c8beaf0fc429ec6fa4f9f965dd795ddd20da8a0fe45d41c57357da9e5047a433fb92d91401fe3eba2cf4b21fdee7ae6ad731052b06f6ff0009041aebfba3ef47ff0015d474a39f6ac12334b90735ff00ba3ef40f435faac9073480efff000f2e8c5922847ee2963c51890d7252b94a3db667df9495c95fd18f35caae5e0834237ebb963db8ff0073ffc40029110002020201030402020301000000000001020003041112101331051421322233154106204223ffda0008010201010800552c428f676cf696cf696cf696cf696cf696cf696c18771f1ed2d9652f5eb94abee90b1feb9bce6f39bce6f39bce4d035915d8f9ca3b09d13ecb111ec60a83d3cffd5d43d5adeffa9dc13989cc4066e64784e89f6594af6b19ed03608616e40b4112fc9e3701102bf0296204774871995ea57caa2babb412647fc744fb2c4fcf0f404f5abd80c4c45bab1c280bfe3c18265572ff00d96cbbf6e24cfded4c07601991e13a27d9662658ab68ef874b0e74faa7a7d59029eeb7ce84f4e5a31eb4a2bbb10d9ffa577ec5d880fa9eb8be9188aab637306546113ecb317185e5c1ab90b14266387bf82b79310f02af2bc9bab1a44b9edba967c9a2d7b4b27f177b20437542a0b5895fdd67a77dad898f56382e57e0e46cf931002ae0d7612aa223329579efef9fc8644c962c79195fdd202cbf5249f36020b98655b04c46fc02957a97662b061b12ff000bd2bfba74d466055d4508aece0e8f16028a4f6d04f6ed16b64f83a991e13a55f748ec55761b258fc44b4b2d80e236986fb679ba83436b41283c8720a00d0d4c9f09d29fd892ce614f6f796203691607a3ca6eefd8fbc6df06254ec6e7c4d4cbf09d29fd95cb92ed9640b618b530e64e351cfb6d1956cbaeda001be464327151de76b52d62de265f84e94fecae735006fb78b0ad0366bc5e1cd18a804936b1ad158d76d56bf0d61568acbb1afc665b6ca8e959d32981ea6da3f6e2a713b0a8aa430606d3f98a71e76f1205c486dafe38dac1b5aea2a1e60ad0110a2fc19a59c14fc428a4030d2baf875e275fea2c71e0bb1dcee3ce6de4f76c9dc713b8d0b13e7a7fffc40026110002020201030403010100000000000001020003041112101331052132411422332042ffda0008010301010800274099df49df49df49df49df49df49df48722b1e7be915d5b7a8df13028fbe0b382ce2b38ace2b3889c5276d577c691e7a1f06596254a5ec6f551ff38f955dfb035f7384e2671335352bfbe865e4dd975d6c4020a9ab14d0eb61ab1f74f28cfc43935586c4479f988f5df657877d96876b257f7d0f831ff4cbd93301013959068b35cf7eaafb54738dfca9948d63fa84c3b455433947575575afefa378332b14dba74fcfbaa3c6ff004fca756b9ea0265d765bdc638d9a2b02bb17df1b348a0b2a52e532919d9457f7d1bc199190690a46476cd361b7d3eb35e32b30f1186c308f8f4d876f6d495d17aa57db6a4a359908dd802a7e7fb747f8b4cef8d732afbb20ad6a7dc53a1e21d865d3a004c755756423d3b1c4fc0a250a147111fe2d0807c8d0f15fb85e967d465fd89056c6f241074655f7d2cf8b74dc4076a4d8c542e86b9a6f22d1ddb277842e1bde6e53e5ba59f0688031d1140f33b615908c81e34cfa08c45c09d96b468f12c4fb9dca3cb74b7e0f2be05873d63402b05385bf7a4f8acbf5cd555b4a489b3394c63b2fd2efe6f297ab880c5904ee292aa2fbc2b324676aebaf4ccedad3e354e59a3d08953528aa48627177b7dcbbf9bc28db1c79e4c56bc901ef0fa2a18b680aeae4cea2da6ea1396fd46d7756e2c0e9e50bad9e8c36088cae34c9dc9dd20831ad673fb1b387b21b6f9cf2616ca3023ffd56a47f8369f00d8e419cdbdc4db4e6c3de07604882d6dfba3721bff26b43ec4228d4eda4e0be276d276d676d60503c74ffc40035100001020208040405040301000000000001000210110312202131415152617191e1223281a11330b1d1f00440426292c1f1e2ffda0008010100093f02fdc4a7395e851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee851f4ee833a77428fa77428fa775989c770809cb180809218e1006b688106038fa2692aed51c775d76aafe2a7c3818ed11dc212be4836f97b20de49b79c0a0dc8744d6a0ce9c2485ed3327d906cb241b720cc24a5379ac4ac537c5c704d6715755f113fdb13d16261b44770fda6d1f48ee10b9a80863a8592329e0b2553c4642adc7ecaab40b8dfefa22d9344ca2660d56cb912ab4d864cfedff138c8835f83b1580c2ced1f48ee0b0cd7a58cee28e190d50735c2e9a7380e10c273b06ced1f48ee10d62e289920436772cefaeaf1ac348696f68fa477086b1c02c16040929e81662456538edb7b44770b635f12f2b2f3676c5a48d161fc63b447708df1382f237057837108ad1650d2392bd8644738ed11dc218404d608dda47d561fea174754179dd87009b58e6e3aaf23b05b44770b17836b9404677acb13c56808fa217013210935b82da23b858ca18c71c42ceeb59a3e5c0a26ac3688ee1f26e5393ef09936e72fc9d89a9d8da23b859cefb25a44ee92a534725fa867354d5ce438dbda23b859c70b2ef0813927d492f1b3277dd52d1b7d55e45ada23b87ca2dab5304ea827254deca99e9cf2a659fcb859d04770f90daaedb0978fc20371443247092a4548e4c7baae75bb2a32359ba7feace823b8592d60f757cb35990119cc6303e51e028521ac6f7357c6f74f784e254e66ce823b841a4818c934a755390fba7fb2c96e0afbe5064dae192a23209a5b3c11bc617a2f9f3b5a08ee10329b916a01561eb0c6b092bc0be12920d4c981789142947aa36b411d443c83cc538a7a7ac6484c8be4992b8c1cdac319a7d1d7c5b28136f411d60d3c4f141cab29c2e002709d5852381764a91c60e74cdfc395bd0475426724df74d4d098d400bd688083a92ae4139e85e335212c39232288ad9a6c9b813c6c6823ac0342a90acab639d87e09cb110c919393bc2e33772592cee86962f74d3a73910a6a6a68de0dcb9220df0a660ad7c97ea3f3aa7d7ac61943d566d23d96ab75a6195c41fc2a884b2334ca3ff2ec833af65ecb09de9fe69cd02152c9da224a706b5a2667aa7d670bc84197e2bc8178d85c493c259ae2b586823a886045dcec31ee64b24cf86d191c4afe06ff00558ee5994e6dc258a2d4e4e72ac7f39a694da8e7191192ba50da2329ce77a7517e7a234646447fc5f0f9af869cdfcf44f1f9e89fee892a65b9a0d055555554ebd9368bfcbff2850753f65f03dd3e8aec3f249d45d7b275175ecb2005b9a9cd4c274e780fbab94ba277b27233d538c8e0a6a7f2cb8aadccaaeab60abf3558f155bd156d24ab155f92ac83956e4abf255e435f924a38238a335353b94d1729c250c93a734e74865fbcffc400291001000201030206030101010100000000010011213141516171208191a1b1f010c1f1d1e13040ffda0008010100013f21ff00e8a738fc1f33fa88fea23fa88fea23fa88fee23fb88fee23fb88fee23fb88fee23fb88fee23fb8fc3845a4fcd1fdc4357ed43eaa05e9e041c41d20a61d74f59d430368572fa317054e4ed055614bec8d948de1f27339c955dd93d674ad0ccf0c0f4c280eecdcb6c050d72e928456bb32dc36935d2c2ead4ed1dd5ae8069ed3000bc34cec794be7ce2c4fbce3c1573ac6b3d1b31374e2749cafdef3335e12b46377f70a138c7007a5b335aad25978c8abd25265ad2cdb0d7b1101317b347cbf72df4efa628760f9951a33856869501c0d034e2ffd982bca7a07c11fa9177586e8ada2a7436fa448c50192f0c1d60696d5646b513acc3be5e0ced643b44c2d2d9a27daf1e23b99e197e0bffcb44fbfe1e1f536fc8cd1cf5de0de93120366a4d6e54ba7d654d5c1fac2bb48047b217ecfacea38d56bcb64537ef3d1a6ad433d1ec1506dc9ef29c36e1660718d753d234dc89e230d34877e5327739c78344fbfe1e0fad1d198bfd8c4b6ad2bcb1804ce65813bc60f91e8472b4a08e7cd1bb19b8f67b404f14a43da26d98e52f6af355ed5f8cf2e3499f2ac3623c1a27dff000f07e43965c0fc022234a36c1dcf394ec121738dfd6025dea33e932e3d37ee5c7d668fe18146f2bbe934fb337f43c1a27dff000f07fcd34a086095f230d269d60ebad7c7e609b86ab0428f91962718f86336fd6934fb330f278344fb5e3c06bdc4143ce1f85516b5ca8b229f6e1ef0c0b7ff003a234f30e5e8c3ed8c537fd13e267ab8d420514f7e6256f3cbf4f53f37d271e00a976d1853d4624ed7bc04c13bc2e4eb06ac0352f128c6bd5bcc65251ecba4cfb1bf47ac37ab845e76aedf867f030e1e50b967b92f5ce5f5959b823858fd4ef34cfbce3c11b4eadc19b8d3c301510ade585a4e4e223155d367e2901b78d9d23b83f6420cc3327ab9262ce0a9f1b1e5e031c406f1d7b44d5569576b7f98445a758a839d46dbb3c4fbce3c29c032a5a5b154c15be52886f184ba69cdd18d6d8e27541a01acf818d5d4368d9a18b6f173b5f47ff12e82c42b3c237b9f79c7822a6823ab1785932b03bb2b7026b84d907e619a816e1d4ef2ab1f9f8194e1aeb2963a2ae2b8746e5711eb85201034da7de71e10d0453f7049e679854d1b66026a84b58aaf535f29ddf77fa621d161768f68a950b315f856b11dd9d062129a4fb8e3c1950d0fc1ab39e261f948e80e9f812a9682965ecbe6e257b7dba9ae621ddba6edef454ca6a319eecbe2d33ee38f0212d99e7f1de9f44b87423095773486b00972ac445b57338db5d0f7388a2d3d8cbe23843549e1d13e838f041e06c532e9de5670c611e5a6399841b2e455f10c1ee3bef2ff00d1fea5bf1825adbeeaac60703baf576f0689f45c782095e06a9d08f208a541aadbfb3557333db8ea43d25fa9495b3399f91393db96f5b5a57d672d0e2c0a8031bedf9d13e8b8ff00c028debb6fd23f30076988a7d271a8a364d51dcda057bc357b78d177a8b27e2c36f94db1ee43ef23fb06fabe6056128b95f8a9a27d171e1c71878868c4da6d701539bd872c5ba17ebac66db774633568ef72e7e143effa98673038a5eaa8655a7cf9e21225aa4f30902748a63c996d72e2df244059bd6e54a950627d171e00a9436aca7b04e71e91fd13fe4765ed465a5c19758c2fd82e6139bdb985479952a831739779c6c69d0b3a421f413f24b45752a54a892a0c4faee3c0d51c5773f59de3b0329d7273ff00386ef6c661ce429d998e6212bcf11bb3ab886d418d61caef19b335e73b99a6152a54a950627d771f9f8f2b1391639a393ede73ee3feceb7a25f5b2a988ee219f2a852f48098319afba2a886f1ba5c61db480790b7ca1c09a61c0da9a4afc593e5952a0c4fa6e3f3f162f4a6734c7940e855ddfece9fd5ff7f07fc49acb2d085521eb86b4581a752033ec4b20b4d38af48e8bd84ff93052e9e438f58eb2b0e198bcc4d2e19d5cfc7132c4d40d3d6a972a325b4dbfc8989f55c7e452420e678974c55971769f5e7170f4a8bff3235db12c35eeb68940e6b58bcc404622923badf265d651352b589e55967eeb99e01bf49565c7799a3700b77554de880aeaf591a8112f59eddf1f9d654e1eb05cdd2aed557042cbb3a9ac3749fbc9d5f44c2b1a988680acbbcb2a2b7da99a17ac146af4727bcda1e411774ee74d8e9338425618cf2ed00d4fd622b4c02deff98f1f100d3402de9718b1a215f975dc2050e8d5c654c474aab8b51a1c95bf683ea51a34f0a19b3150e5b589dbac3e20fd18953fa97a796f19c29c8dbbe3106008e4972e22f54ede53437b93da0a431cdf6e904f464bdfb4796ddedcb3e5518b2b2bd552fdd9b905e59f75c7e5d4451dfa4a9cc2b71c3cff002dcca360be7f32f62df2dd7a4352ba5deb0b3ce281679fa74368313920eeeec7d63a9499e4bccbf45e43fe4698b7968ff6346efd7010ec379c3dce06e785baac306391a3bc7ad37d27de71f9b106be1f61987f7335bc72c6ce8c5364a2ad772b908f1fe50c26ebde891755e15d33bc010bd8ed5d59c7e86dfdceafd794ea7d794764bbc1fde14f4c97afe5ff00895bd065cff712a9fb12faa9cee15e3bdbd042dc3356932125eb5c42006eaa637ae4e36e331e230eb8811d9020cf38d3fe42d8fb5569da228f626de92bdb1dea660e66b887adb18cff00e3b4a01b25802ccad6969d253af9a373a23b2b8de0468aa74c721330e8e094e1cf348e99e362e7b0a6b6cd46fcce1cdc3b5a6b5b4e8669a46d2ebbc0ab9442da3f3ff9187202f83ff7ff001a1a6d7e9fd4bc8f1a2fd731c1b1dd02e283b3382766610e6acc176cbde246479c0dbe159637eaceb6b2853ddd7be652aaf1e7011181acaca2aba4b14eb8c3ff00d9ffc400291001000202010206020203010000000000010011213151417110618191b1f0a1c120d130e1f140ffda0008010100013f10ff00d0398a20ad1ec21fe7f362cf9f2e5cb972e5cb9f2e5c8faf75362579f81726b48d1215eead0b5e3a3c315f5f21a550f3568228b0698447b7cc06aa682bafac51b0e5a810a6b77e6c45efc049b5a48483a00ae851f5262bee0da147631c0055973aae6e5ffa6c381ca4d803b11206aee1193004f38671280761ba82aaac29d78301e54218d6b4f384400eee567cc5d9d92d68291a0f3e17ee78f8ea89810ba52d1cc1ba3480bb9e385c41728d43541a23aa1f9a45d69561f21638ccdea1fdc360c274b7cd144b5eed164f41d0234279002cf3501a7bf2a98318100faa850a90ec80d2efac0c548d6e60b8de66777306d8f4a184ece6a050b22aff0004a85bd436008678175ba04af1206d98d6e652d5b36ea1a974112f5ca55b9a032fe1cb1cfd971f1d701c12e225d2f073500cbf0b94964b972e5c25c25c79ff00069aa038879dd2afc3c10e067953ea5cc6da33345e9507cf99d15f5f2747d65241705e2f27206614da9e43a3d9999ea1b4039e73baea08e9b7cf3edf608c9c4717036b5a3014b0faa3d2659116f07a171eaff02cbd6c006d4a992ef0a6575d518f7502b5f432237fc2f7fe0d354321a9f4f8f595d0101741707b44c72cb9194cb0507097a48e4315497b467e45b1e242e4a0053aee62a38ea4dda370f6b2abcf4b4419228654e251b92f32da0ddec181d2d85e32f686439365c0fb8aae06b55a333aa70d7f3da6a856aed22fc88c70965fc3025f020c41453d239d578b7f00188e0690c9593c8520b26e5db38f754c1c568e93c098b2f74ec2c28087fd31109ac2cbe4ca0577ee455defc303c2a1fe169a20ff0035c169c0f860f02b5c3cca3293035d25840be7082aec21836b78d02f000b2a292a1f2e5972c547b4c188ecf2786583b90a095e1be67f5b1f1d70f3108273b053d1b860c90baa3820accbc454748f02b1f88b842febcb51ff00c901e04b36f8d413a42e91a657b2b228f7992951c33b05d9207692b7a9f8214c194fa1e3e3a67ff372c01760fdc63e6bd3f24a9b7e4a8bc0e8769bbf6d061db0d5cfaae79b94779a01dbc50ef804665ca3ee8d537a06d86aa6aecf882a25aed3e58b65325118b682d93cd1730fd506f766541ac1d2336cfb9e3e3a26118a3ed6a6249e174a8a172e5aa575fe8c380442869dd40350e2af8e82b08c43c567bc1f5a7848f34577fb085b9b26c2650267f651283928f528eea925b0747cc7782fd76f648d261917a93f73c7c75cc3107dbf48c60a31ec3b33a069ef8d772426f5166018780ef05056cf3ad558cb3d8caf50b1ef5440a696cc6278b510771e5b967f70ddf9847a3571d282cf75330d1ce40ce2e1c19b53297567dcf1f1d33d22aed905b72b152b3df2f21c30f396c87a0ea0ce1ccb03a23e420ac3036743a7de2d2b634ca950b4a85c3b1ba417218ee991b8cd1b7216edd9965648e85ad0a66692d1f73c7c744c1a9f8530c285da147bcbed47d2af35f05b0e76dc8797499a9bc6aa64319ee4494b5d9425df5111b193c7067ade2dc23a47c05c101108dfaf6ffb88b0f61fdcf23dbfee7240a3453e97878e99984fc2998f2cc4a6ce83b97a30c4791ed006e11666f019e654afe58c6271791d038f9d165158acb64f90218b4bbcaa3ce97a949bf0a944a20ce7d2f0f1d111894942cbe4950512d15b8da2f25f16d8a2967c387831798daa0a57b143963d1c2c3443339cdf8e1a26eb1e293f8ef9f7bc3c75c06254a950a90f53099b43244df8096161b5442f4b5dd4e2c437e0501441a531e8dfb754333d0c9779e4043ec806537cd4d92a542de7df70f1d1018f104a4c9b3244ed667da60b6450eb41a46c5e6991974f35450ae8d2d514218f4c78ac413e3243a87b03f516095d3af650960faeae19c2203746fc1952a1ce7d1f1f1d100c4a654ac81d704bf79d03d2f9888aa9ee1020a5914f530ad4b0070d31c5a864887588d6d50096ac3168b77e562b87677cccd77ba7cc038f5d7365c630c0387acc3ca5780e73e8b878eb806089f3ac89b29a80c9610ad78d40666aa71f745d7dfbfa385f88099a40fef1a95b85ad8ec60b1f424ba6710455348b2e75659766d61d3b8ea768fed0f591f48f6047b5b1c0b36bc07c0cf9f45c3c4598184296af902429f636af9970adcaabe514df7489ad9b99e31f0acf1aa09365825c81b6284ba58e2807a28c951bacab284dd3552b848cb047f803327dbf1f13664613dedf96943f3e076fe635fe996be708f257e33d44af21867f34942d16dc0547645652a68aed1690791e8400645ef31b507763e1b2c32b79f69c3c4589b06cbb330b6dac3a03da0e03dc7ea47d9f771faba7cb1c7f2a9134ae72ae20f4b7f98287a7c7372e8b6e433b16465ea82d986f02b25b0e9546d9a8805b041050d1a3bf8b953e83878e422948231c425321013834c85fbff64812af43e981f7d75443d054042cae1a03722074032b26a9ac7a42dcad8cfa732f9c252a2e647482ac1c5d9b59ac108202abc2f71958ab922c7a8b783960d61dfae30a6a8eeb352f2962ede4757954ce86bea61e3cf284f4ccae9029e5e4cba7eacb4d4fd0d5fb8e18ed8ebcfbb8250728af1661071bc0df159b737d65db8a106e347b197ad3e4688e520a51b825f663f10667e2088d6bc6c6d5b1195d5868104fccce488b2c95bc943706db2ba535b0a98fdfc3c425a81abc93ab722e96432bc2169586c37141439c439849c7778217cc6bfa025d080cf294d851589a59b927c85cdf29847dbfbc0db0dd34aa81b181dba254e092cf38269d711663006bd18b5eb8356887e04570c7d5f5979df74cdb71311699a44113c6dfc94b05940f58b5d601ca7cd91867b407a39a14d53f7c6d7636c2f779b6b8e62acc578b5d4e0a9b453581026e95aa6da32d929147ba5a696d62e02858a3849984a0580aec10b0c96283ad244b810b50eb5ac894813e67d335db362dcf5da3225b22103bcbf0b2e72ef043132583a773e9b878b77ca2155b677f78959109dbf4788297aae6635d96404360c16f163a080ae054bc2f4808f2892d49470dc370f3094a560ba1e5400b4b8e3c30cbf8186cf45fd14715aa86dfaa628460b1795b4d0eec08ca4e791506a25716a5777ddc440ec0b4ff0064fb9e3e3b9dc9250f3882447b0dd34a728261cc92b7777aa23460fe431a3ec87ed4a39f45af88a0af5d68fe098d82778ab6416536adafa049d3a5aad762c11defbec7fd960df944f853e67fd387a7dd2feb2c72479bf79bad5baea5a16b5e1f7549b4b8584d5055fcc11a52cc84be1b097ab830c7b67a489d60aa4adb68e0059028422ea6881b40eacc450d29c6b051174735585fd4b56eaedabd2d593330f0a018e4deb599d4b95b27b8a0ca74a832b28549f495cc26c8ad4ae83fe14b40d595736ecb4a833788de7b025845fa08b884553916e7a62549311300b4b5bb18e4660a33d338b8b499a966c30bd0eb2f538a3ac3953a358ef348b92c2c1b04cac42156f28c2feaaaf5961a4720db23f082db162b1925d0262a150ba8bed7a688f152a742d36f0403438885794f9778f0f310c515c997e3fc09627300e0d037c3f2087d40016f2f72270b6e8647cae1fb8713f44772170c1d38ed366af53eb432bd9e06ef4a95632a92f52be136cc712e5a81823a8e33e44f7762c70ac8ca2d60152d235eb1f08b819759ddbe7143213dccc69e540455dc5569ee7ae7ff0067ffc400391100010301050505050705010000000000010002113112214151710310618191202252a1b13262c1e1f013437292d1d2f1043042538293ffda0008010201093f00a92acf5567aab3d559eaacf5567aab3d500559eaa2fdde2554d1d5347540754075c501d5530d500784e2846fcd093f0cc95b400e513e6482887034771d1653cbfb19ab9ce6933e4de9508df3338cea9a40a929cc0c812ef74b4199a44193ccc221cd7c597820b4b49a870b8a3306aa21e70f0c89f5b9032664ce91d8cd7fa88ffa13fb7712d1b77ced8e3f636c089e7274404016437200c0f97002b81b5b3d9ff5846c8f2977a03a92bc4b21ea1519b3975e31718ae767b19a9b04c8393b1bb10714fbb2ab7f704e76cf69b275ce1067626f22fa525870c8aa010338d6b389e28101af2f7389971738dee2785340111245e3037541550d1d65005c1a3ff3be8220f1e4a5ddc1adc008e3143c6e5783bb34e2d808904ba394fd12a8c17fc775260e9f4653aecaa3cd1936801a4fcd32d02c899188e2704d68204075afbb9be92704203091ce73aeecd7847aa37e2f39701fc9559ae307718c40f79073cc603d4a165c0c81c558e8ac74552e24ebbb344b79c5c892b168f5dc5ad9188f4b8c15b52c1e18271cfcd3dce3a7673de6f8bf49cd7825a3de45a0d2fac624695ce89fb3e80ba24d4912b68c1c827878d31d6a7b1e242d1c902ce353e709e5d0c9880311884580174107da8222e3cd35afbe8725b06fe6f84ad9103f15dd2a61081d8f1204b8fd4fe8838f2053207d99ef598be26bc96cedcbbdabf3188bb8a93fac29b337199d788a2100d345f597cb7667e1bbc49c4322fef40074f35b66fe72b6ad7771d74cfdd94e8877b3a14fb001b8adb5b045edaf76353aa22c0b86760524abddf680067f8c874344739d77667e1bbc488135d2689e7afc93c97c5c395f829b6d32d667009a9b8225b8cc633f509ce73ec9b222e9222b3c53a04f7ba7cef46f6fb3f8f5e772cd61bb0288822bef6053d9d56d7660c463435c16d996853a678556d18d03aeb00438e126f5b55b471fad1127994600a0fe7c919ec1957f3c7a6337202790eee9118eaac41a5c2bd101add5e9287a0c5575466eec946b5d538a26734e28a3cf1acd6a38abf7ff00ffc4003611000103010603060404070000000000000100021121031231415171106191203281b1c1f02262a1d10452d2e1133033538292a2ffda0008010301093f0052a54a952a54a30a78e9c09e88a251289e39993a4fbc7af60dd6fd674031255892352e8fa004205af024b3e5d41cf9af67f935b36b808cb5775eeec1017622328db04f072bb064c8c135e5d90e60e118cd21020b4196e0640c08350845e131fba066c81a114bd06303f2d5119408819f67fb80f818fd5c049b101b65cad4892edc4c351223ecbbeffc39be790790d27addd805f9573f23f741ce32035804b8bae8a01e28cb48a1fdb22307660823b101e0446addf22324c93d1dfa4a0d7d8db37e269c45b8a603febcc2c6649e69d24d9dd6370000931e24cee4a0601a1cc56a0b5673d2139ecb316866302f86d090411f2e2314c2d69ab5c050826af232bce90dcc993c744d0e940168613fe5148388393551cf37a37c3ca4f0c5304eb814201612778fd95b5c3322ceb76f5e1f118c6821bd53cc31d36900c98690d89a67bd56601f08e1a2d4f926989fe98d799f6150461cf80dcf245ad1bfa232d7082792bfd55eeab00001b70d10050016478071dbd559871fcd3cb44d6b47674e22996eb5a9e4838f94e40c64704cb4c7531302738566e3e29a5a77cb6ec688c0d510f4d0dae333968507120523bb3cc27399cc6aad9c75f87d615a4f857af674461a3dc7dd168f1213e7e2eede9fa27dda7769eb5e4a9f695dec2233cb9199464830775e1ebd33ec7e54d05d34a49eaac9dfe8acdcd378563e609b248c770985e4d08561fc33785d7e106760812e35719817ce30dc00d15182c8cbe61d05b2f24e0a4405a0e1a204d7d1342680d9a9f65001a7bced3c314038e9c906b593f119ac6d1d136743152650a3fbdcacf1f4aacdbefcd69872e2248387ca9afe8acde60e8227aab3741c4f29d159b8f94e924c819985669807bdd01f4552713cba75ec883d42f2cbaf244c789f8b799c95e918d4e1d513b570eb08f99c9608457b210c30d934202344d0821ee34cfb1fffd9, 94);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `lozinka` varchar(1000) NOT NULL,
  `uloga` varchar(20) NOT NULL DEFAULT 'korisnik'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `email`, `korisnicko_ime`, `lozinka`, `uloga`) VALUES
(1, 'Korisnik', '1', '1@korisnik.com', 'korisnik1', 'affc2dc1a3f9fb05392d3cb0a784ff61', 'korisnik'),
(2, 'Admin', 'Admin', 'admin@mail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `zanrovi`
--

CREATE TABLE `zanrovi` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `zanr` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmovi`
--
ALTER TABLE `filmovi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zanrovi`
--
ALTER TABLE `zanrovi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmovi`
--
ALTER TABLE `filmovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zanrovi`
--
ALTER TABLE `zanrovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zanrovi`
--
ALTER TABLE `zanrovi`
  ADD CONSTRAINT `zanrovi_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmovi` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
