let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["SLAM", "Odometry", "Registration", "Exploration", "Long-term", "mapping", "Multi-session", "Planning", "Optimization", "Estimation", "Control", "Swarm", "Detection", "Segmentation", "Life", "estimator", "Multi", "Distributed", "Decentralized", "Centralized","Collaborative", "session"];
let titles_method = ["Certifiable", "Self-Supervised", "Semi-Supervised", "Unsupervised", "Fusion", "Navigation", "Detect", "Decision", "Calibration", "Reinforcement", "Relocalization", "loop", "global", "outlier", 
"localization", "dynamic", "sparsification", "graph", "clique", "HD map", "reconstruction", "robot", "nerf", "Guassian", "road", "robust", "city", "simulation", "simulator", "dataset", "Deformable", "closed-form", 
"geometric", "benchmark", "evaluation", "prediction", "multi-view", "grasp", "field", "point cloud", "lidar", "trajectory", "trajectories", "cluster"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = [
//Robotics
"Wolfram Burgard", "Andrew Davison", "Pieter Abbeel", "Daniel Cremers", "Sebastian Thrun", "Michael Kaess", "Ian D Reid", "Johannes L. Schönberger", "Luca Carlone", "Davide Scaramuzza", "Cyrill Stachniss", "Dieter Fox", "Marc Pollefeys", "Roland Siegwart", "Michael Milford", "Hugh Durrant-Whyte",
"Vijay Kumar", "J.M. Martínez Montiel", "Sebastian Scherer", "RaúlMurArtal", "Jonathan P. How", "Frank Dellaert", "Timothy D. Barfoot", "Nicholas Roy", "Sven Koenig", "lan Reid", "Cesar Cadena", "Margarita Chli", "Nikolay Atanasov", "John Leonard", "Stergios I. Roumeliotis", "Patricio Vela", "Maurice Fallon", 
"David Murray", "Jakob Engel", "Jörg Stückler", "Niko Suenderhauf", "Yasir Latif", "Yuke Zhu", "Shaojie Shen", "Ming Liu","Yue Wang", "Fei Gao", "Fu Zhang", "Hesheng Wang", "Lihua Xie", "Fu Zhang", "Ji Zhang", "Yong Liu", "Hesheng Wang", "shoudong huang", "Guoquan Huang", "Brendan Englot", 
"Guofeng Zhang", "Lin Zhang", "Tin Lun LAM", "Danping Zou", "Tong Qin", "Heng Yang", "Danping Zou", "Ken Sakurada", "Shuji Oishi", "Pyojin Kim", "Yunhui Liu", "Zichao Zhang", "Wenchao Ding", "Shenghai Yuan", "Ayoung Kim", "Huan Yin", "Xieyuanli Chen", "Ling Pei", "Peng Yin", "Boyu Zhou", 
"Jiarong lin", "Kevin Doherty", "Yue Pan", "Hermann Blum", "Tixiao Shan", "Turcan Tuna", "Xingxing Zuo", "Kasra Khosoussi", "Shuhui Bu", "Sören Schwertfeger", "Laurent Kneip", "Ryan M. Eustice", "Han Wang", "Dinesh Atchuthan", "Joan Solà", "Ryan M. Eustice", "Ram Vasudevan", "Joshua Gary Mangelson",
"Pierre-Yves Lajoie",
//INS
"Naser El-Sheimy", "Xiaoji Niu", "Jianhao JIAO",
//CV&AI
"Luc Van Gool", "Andrew Zisserman", "Jakob Engel", "Yoshua Bengio", "kaiming he", "Yuan Liu", "Hang Zhao", 
//Other
"Bisheng Yang", "Cheng Wang", "George Vosselman", "Yu-Shen Liu", "Jonathan Li"
];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security",
    // Robot journal
    "TRO", "RAL"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
