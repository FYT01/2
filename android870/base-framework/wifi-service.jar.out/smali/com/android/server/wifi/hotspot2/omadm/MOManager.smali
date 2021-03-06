.class public Lcom/android/server/wifi/hotspot2/omadm/MOManager;
.super Ljava/lang/Object;
.source "MOManager.java"


# static fields
.field private static final DTFormat:Ljava/text/DateFormat;

.field public static final TAG_AAAServerTrustRoot:Ljava/lang/String; = "AAAServerTrustRoot"

.field public static final TAG_AbleToShare:Ljava/lang/String; = "AbleToShare"

.field public static final TAG_CertSHA256Fingerprint:Ljava/lang/String; = "CertSHA256Fingerprint"

.field public static final TAG_CertURL:Ljava/lang/String; = "CertURL"

.field public static final TAG_CertificateType:Ljava/lang/String; = "CertificateType"

.field public static final TAG_CheckAAAServerCertStatus:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field public static final TAG_Country:Ljava/lang/String; = "Country"

.field public static final TAG_CreationDate:Ljava/lang/String; = "CreationDate"

.field public static final TAG_Credential:Ljava/lang/String; = "Credential"

.field public static final TAG_CredentialPriority:Ljava/lang/String; = "CredentialPriority"

.field public static final TAG_DLBandwidth:Ljava/lang/String; = "DLBandwidth"

.field public static final TAG_DataLimit:Ljava/lang/String; = "DataLimit"

.field public static final TAG_DigitalCertificate:Ljava/lang/String; = "DigitalCertificate"

.field public static final TAG_EAPMethod:Ljava/lang/String; = "EAPMethod"

.field public static final TAG_EAPType:Ljava/lang/String; = "EAPType"

.field public static final TAG_ExpirationDate:Ljava/lang/String; = "ExpirationDate"

.field public static final TAG_Extension:Ljava/lang/String; = "Extension"

.field public static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final TAG_FQDN_Match:Ljava/lang/String; = "FQDN_Match"

.field public static final TAG_FriendlyName:Ljava/lang/String; = "FriendlyName"

.field public static final TAG_HESSID:Ljava/lang/String; = "HESSID"

.field public static final TAG_HomeOI:Ljava/lang/String; = "HomeOI"

.field public static final TAG_HomeOIList:Ljava/lang/String; = "HomeOIList"

.field public static final TAG_HomeOIRequired:Ljava/lang/String; = "HomeOIRequired"

.field public static final TAG_HomeSP:Ljava/lang/String; = "HomeSP"

.field public static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field public static final TAG_IPProtocol:Ljava/lang/String; = "IPProtocol"

.field public static final TAG_IconURL:Ljava/lang/String; = "IconURL"

.field public static final TAG_InnerEAPType:Ljava/lang/String; = "InnerEAPType"

.field public static final TAG_InnerMethod:Ljava/lang/String; = "InnerMethod"

.field public static final TAG_InnerVendorID:Ljava/lang/String; = "InnerVendorID"

.field public static final TAG_InnerVendorType:Ljava/lang/String; = "InnerVendorType"

.field public static final TAG_MachineManaged:Ljava/lang/String; = "MachineManaged"

.field public static final TAG_MaximumBSSLoadValue:Ljava/lang/String; = "MaximumBSSLoadValue"

.field public static final TAG_MinBackhaulThreshold:Ljava/lang/String; = "MinBackhaulThreshold"

.field public static final TAG_NetworkID:Ljava/lang/String; = "NetworkID"

.field public static final TAG_NetworkType:Ljava/lang/String; = "NetworkType"

.field public static final TAG_Other:Ljava/lang/String; = "Other"

.field public static final TAG_OtherHomePartners:Ljava/lang/String; = "OtherHomePartners"

.field public static final TAG_Password:Ljava/lang/String; = "Password"

.field public static final TAG_PerProviderSubscription:Ljava/lang/String; = "PerProviderSubscription"

.field public static final TAG_Policy:Ljava/lang/String; = "Policy"

.field public static final TAG_PolicyUpdate:Ljava/lang/String; = "PolicyUpdate"

.field public static final TAG_PortNumber:Ljava/lang/String; = "PortNumber"

.field public static final TAG_PreferredRoamingPartnerList:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field public static final TAG_Priority:Ljava/lang/String; = "Priority"

.field public static final TAG_Realm:Ljava/lang/String; = "Realm"

.field public static final TAG_RequiredProtoPortTuple:Ljava/lang/String; = "RequiredProtoPortTuple"

.field public static final TAG_Restriction:Ljava/lang/String; = "Restriction"

.field public static final TAG_RoamingConsortiumOI:Ljava/lang/String; = "RoamingConsortiumOI"

.field public static final TAG_SIM:Ljava/lang/String; = "SIM"

.field public static final TAG_SPExclusionList:Ljava/lang/String; = "SPExclusionList"

.field public static final TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final TAG_SoftTokenApp:Ljava/lang/String; = "SoftTokenApp"

.field public static final TAG_StartDate:Ljava/lang/String; = "StartDate"

.field public static final TAG_SubscriptionParameters:Ljava/lang/String; = "SubscriptionParameters"

.field public static final TAG_SubscriptionUpdate:Ljava/lang/String; = "SubscriptionUpdate"

.field public static final TAG_TimeLimit:Ljava/lang/String; = "TimeLimit"

.field public static final TAG_TrustRoot:Ljava/lang/String; = "TrustRoot"

.field public static final TAG_TypeOfSubscription:Ljava/lang/String; = "TypeOfSubscription"

.field public static final TAG_ULBandwidth:Ljava/lang/String; = "ULBandwidth"

.field public static final TAG_URI:Ljava/lang/String; = "URI"

.field public static final TAG_UpdateIdentifier:Ljava/lang/String; = "UpdateIdentifier"

.field public static final TAG_UpdateInterval:Ljava/lang/String; = "UpdateInterval"

.field public static final TAG_UpdateMethod:Ljava/lang/String; = "UpdateMethod"

.field public static final TAG_UsageLimits:Ljava/lang/String; = "UsageLimits"

.field public static final TAG_UsageTimePeriod:Ljava/lang/String; = "UsageTimePeriod"

.field public static final TAG_Username:Ljava/lang/String; = "Username"

.field public static final TAG_UsernamePassword:Ljava/lang/String; = "UsernamePassword"

.field public static final TAG_VendorId:Ljava/lang/String; = "VendorId"

.field public static final TAG_VendorType:Ljava/lang/String; = "VendorType"


# instance fields
.field private final mEnabled:Z

.field private final mPpsFile:Ljava/io/File;

.field private final mSPs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "ppsFile"    # Ljava/io/File;
    .param p2, "hs2enabled"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    return-void
.end method

.method private static buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 44
    .param p0, "credNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const-string v5, "CreationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v6

    .local v6, "ctime":J
    const-string v5, "ExpirationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v8

    .local v8, "expTime":J
    const-string v5, "Realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v10

    .local v10, "realm":Ljava/lang/String;
    const-string v5, "CheckAAAServerCertStatus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v11

    .local v11, "checkAAACert":Z
    const-string v5, "UsernamePassword"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v41

    .local v41, "unNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v5, "DigitalCertificate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v18

    .local v18, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v5, "SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v40

    .local v40, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v41, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v4, v5, 0x0

    .local v4, "alternatives":I
    if-eqz v18, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    if-eqz v40, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected exactly one credential type, got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v4    # "alternatives":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .restart local v4    # "alternatives":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-eqz v41, :cond_a

    const-string v5, "Username"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v13

    .local v13, "userName":Ljava/lang/String;
    const-string v5, "Password"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v14

    .local v14, "password":Ljava/lang/String;
    const-string v5, "MachineManaged"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v15

    .local v15, "machineManaged":Z
    const-string v5, "SoftTokenApp"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v16

    .local v16, "softTokenApp":Ljava/lang/String;
    const-string v5, "AbleToShare"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v17

    .local v17, "ableToShare":Z
    const-string v5, "EAPMethod"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v32

    .local v32, "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v5, "EAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v30

    .local v30, "eapID":I
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v31

    .local v31, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v31, :cond_4

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string v5, "VendorId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v42

    .local v42, "vid":Ljava/lang/Long;
    const-string v5, "VendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v43

    .local v43, "vtype":Ljava/lang/Long;
    const-string v5, "InnerEAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v34

    .local v34, "innerEAPType":Ljava/lang/Long;
    const/16 v33, 0x0

    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-eqz v34, :cond_5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v33

    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v33, :cond_5

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bad inner EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    :cond_5
    const-string v5, "InnerVendorID"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v36

    .local v36, "innerVid":Ljava/lang/Long;
    const-string v5, "InnerVendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v37

    .local v37, "innerVtype":Ljava/lang/Long;
    const-string v5, "InnerMethod"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v35

    .local v35, "innerNonEAPMethod":Ljava/lang/String;
    if-eqz v33, :cond_6

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .local v12, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :goto_3
    new-instance v5, Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-direct/range {v5 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-object v5

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_6
    if-eqz v42, :cond_7

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_7
    if-eqz v36, :cond_8

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_8
    if-eqz v35, :cond_9

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_9
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v19, "Incomplete set of EAP parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v13    # "userName":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "machineManaged":Z
    .end local v16    # "softTokenApp":Ljava/lang/String;
    .end local v17    # "ableToShare":Z
    .end local v30    # "eapID":I
    .end local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "innerEAPType":Ljava/lang/Long;
    .end local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .end local v36    # "innerVid":Ljava/lang/Long;
    .end local v37    # "innerVtype":Ljava/lang/Long;
    .end local v42    # "vid":Ljava/lang/Long;
    .end local v43    # "vtype":Ljava/lang/Long;
    :cond_a
    if-eqz v18, :cond_b

    :try_start_0
    const-string v5, "CertificateType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v29

    .local v29, "certTypeString":Ljava/lang/String;
    const-string v5, "CertSHA256Fingerprint"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B

    move-result-object v28

    .local v28, "fingerPrint":[B
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v5, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    move-result-object v27

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v19 .. v28}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v19

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v28    # "fingerPrint":[B
    .end local v29    # "certTypeString":Ljava/lang/String;
    :catch_0
    move-exception v39

    .local v39, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bad hex string: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v39 .. v39}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v39    # "nfe":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v40, :cond_c

    :try_start_1
    new-instance v27, Lcom/android/server/wifi/IMSIParameter;

    const-string v5, "IMSI"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    .local v27, "imsi":Lcom/android/server/wifi/IMSIParameter;
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    const-string v5, "EAPType"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v5

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v19 .. v27}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v19

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v27    # "imsi":Lcom/android/server/wifi/IMSIParameter;
    :catch_1
    move-exception v38

    .local v38, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to parse IMSI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v38    # "ioe":Ljava/io/IOException;
    :cond_c
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v19, "Missing credential parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 30
    .param p0, "ppsRoot"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const-string v2, "HomeSP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v22

    .local v22, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "FQDN"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fqdn":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "FriendlyName"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v9

    .local v9, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "IconURL"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v10

    .local v10, "iconURL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .local v5, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "RoamingConsortiumOI"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v20

    .local v20, "oiString":Ljava/lang/String;
    if-eqz v20, :cond_0

    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/4 v2, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_0
    move/from16 v0, v27

    if-ge v2, v0, :cond_0

    aget-object v19, v26, v2

    .local v19, "oi":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v19    # "oi":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "NetworkID"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v23

    .local v23, "ssidListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "ssidRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v24, "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "HESSID"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    .local v14, "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "SSID"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v14    # "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v24    # "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v25    # "ssidRoot$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .local v7, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "HomeOIList"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v16

    .local v16, "homeOIListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "homeOIRoot$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v17, "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "HomeOI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v15

    .local v15, "homeOI":Ljava/lang/String;
    const-string v2, "HomeOIRequired"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-static {v15, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    invoke-static {v15, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v15    # "homeOI":Ljava/lang/String;
    .end local v17    # "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v18    # "homeOIRoot$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v26, "OtherHomePartners"

    const/16 v27, 0x0

    aput-object v26, v2, v27

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v21

    .local v21, "otherListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "fqdnNode$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v12, "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "FQDN"

    invoke-virtual {v12, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v12    # "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v13    # "fqdnNode$iterator":Ljava/util/Iterator;
    :cond_4
    const-string v2, "Credential"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v11

    .local v11, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V

    return-object v2
.end method

.method private static buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V
    .locals 32
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "spInstance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v24

    .local v24, "providerSubNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v27, "HomeSP"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    .local v15, "homeSpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_1

    const-string v27, "NetworkID"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v20

    check-cast v20, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v20, "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .local v17, "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .local v18, "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v16, "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v28, "SSID"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_0

    const-string v27, "HESSID"

    const-string v28, "%012x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_0
    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_0

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v20    # "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string v27, "FriendlyName"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2

    const-string v27, "IconURL"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_2
    const-string v27, "FQDN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_6

    const-string v27, "OtherHomePartners"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    check-cast v23, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v23, "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "fqdn$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "fqdn":Ljava/lang/String;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v27, "FQDN"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_1

    .end local v12    # "fqdn":Ljava/lang/String;
    .end local v13    # "fqdn$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v23    # "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_4
    const-string v27, "HomeOIList"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    check-cast v14, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v14, "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "oi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .local v21, "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v27, "HomeOI"

    const-string v28, "%x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v21, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v27, "HomeOIRequired"

    const-string v28, "TRUE"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_2

    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v21    # "oi":Ljava/lang/Long;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .restart local v21    # "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v27, "HomeOI"

    const-string v28, "%x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v21, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v27, "HomeOIRequired"

    const-string v28, "FALSE"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_3

    .end local v14    # "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v21    # "oi":Ljava/lang/Long;
    .end local v22    # "oi$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_7

    const-string v27, "RoamingConsortiumOI"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getRCList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_7
    const-string v27, "Credential"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v8

    .local v8, "credentialNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v7

    .local v7, "cred":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v19

    .local v19, "method":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_8

    const-string v27, "CreationDate"

    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v29, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v30

    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_9

    const-string v27, "ExpirationDate"

    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v29, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v30

    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    :cond_a
    const-string v27, "SIM"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v25

    .local v25, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v27, "IMSI"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v27, "EAPType"

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .end local v25    # "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_4
    const-string v27, "Realm"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-void

    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_c

    const-string v27, "UsernamePassword"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v26

    .local v26, "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v27, "Username"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v27, "Password"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v27, "EAPMethod"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v9

    .local v9, "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v27, "EAPType"

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v28, "InnerMethod"

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v27

    check-cast v27, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getOMAtype()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .end local v9    # "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v26    # "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    const-string v27, "DigitalCertificate"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v6

    .local v6, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v27, "CertificateType"

    const-string v28, "x509v3"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v27, "CertSHA256Fingerprint"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .end local v6    # "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_d
    new-instance v27, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Invalid credential on "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v27
.end method

.method public static buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v1

    .local v1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected exactly one HomeSP, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v3
.end method

.method private static buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;
    .locals 8
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PerProviderSubscription"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v1

    .local v1, "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-nez v1, :cond_1

    return-object v0

    .end local v0    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v1    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "PerProviderSubscription"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .local v2, "spPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v1

    .restart local v1    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    goto :goto_0

    .end local v2    # "spPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "spRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v3, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_2
    return-object v0
.end method

.method private static fqdnList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "sps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v2, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z
    .locals 1
    .param p0, "boolNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstanceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v2, "Missing integer value"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "macNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B
    .locals 2
    .param p0, "octetNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v1, "Missing byte value"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getRCList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "rcs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "roamingConsortium$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .local v2, "roamingConsortium":Ljava/lang/Long;
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "roamingConsortium":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;
    .locals 1
    .param p0, "stringNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J
    .locals 6
    .param p0, "timeNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "timeText":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "pe":Ljava/text/ParseException;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Badly formatted time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static rewriteMO(Ljava/util/Collection;Ljava/util/Map;Ljava/io/File;)V
    .locals 12
    .param p2, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .local p1, "current":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string v8, "PerProviderSubscription"

    invoke-direct {v6, v9, v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "ppsNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/4 v2, 0x0

    .local v2, "instance":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "homeSP$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v0, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "instance":I
    .local v3, "instance":I
    invoke-static {v0, v6, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .end local v3    # "instance":I
    .restart local v2    # "instance":I
    goto :goto_0

    .end local v0    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_0
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    const-string v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    const-string v10, "1.2"

    invoke-direct {v7, v8, v10, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .local v7, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    const/4 v4, 0x0

    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v8, p2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v9, :cond_5

    throw v9

    :catch_0
    move-exception v9

    goto :goto_1

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_3
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    if-eqz v9, :cond_4

    throw v9

    :catch_2
    move-exception v10

    if-nez v9, :cond_3

    move-object v9, v10

    goto :goto_4

    :cond_3
    if-eq v9, v10, :cond_2

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v8

    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    return-void

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method private static writeMO(Ljava/util/Collection;Ljava/io/File;)V
    .locals 12
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v9, 0x0

    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string v8, "PerProviderSubscription"

    invoke-direct {v6, v9, v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "ppsNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/4 v2, 0x0

    .local v2, "instance":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "homeSP$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v0, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "instance":I
    .local v3, "instance":I
    invoke-static {v0, v6, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V

    move v2, v3

    .end local v3    # "instance":I
    .restart local v2    # "instance":I
    goto :goto_0

    .end local v0    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_0
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    const-string v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    const-string v10, "1.2"

    invoke-direct {v7, v8, v10, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .local v7, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    const/4 v4, 0x0

    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v8, p1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v9, :cond_5

    throw v9

    :catch_0
    move-exception v9

    goto :goto_1

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_3
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    if-eqz v9, :cond_4

    throw v9

    :catch_2
    move-exception v10

    if-nez v9, :cond_3

    move-object v9, v10

    goto :goto_4

    :cond_3
    if-eq v9, v10, :cond_2

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v8

    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    return-void

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 11
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .local v2, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v2, p1, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v7

    .local v7, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v6

    .local v6, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v9, :cond_0

    new-instance v8, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected exactly one HomeSP, got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v5, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v0

    .local v0, "fqdn":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v8, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const/4 v3, 0x0

    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v8

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    throw v8

    :catch_1
    move-exception v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_2

    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 3
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "HS2.0 not enabled on this device"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HS20 profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding new HS20 profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->writeMO(Ljava/util/Collection;Ljava/io/File;)V

    return-void
.end method

.method public getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v0
.end method

.method public getLoadedSPs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPpsFile()Ljava/io/File;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    return-object v0
.end method

.method public isConfigured()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    return v0
.end method

.method public loadAllSPs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    iget-boolean v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    throw v7

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :catch_0
    move-exception v7

    goto :goto_0

    :cond_2
    return-object v6

    :cond_3
    :try_start_3
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v5

    .local v5, "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "sp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiple SPs for FQDN \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "sp$iterator":Ljava/util/Iterator;
    .end local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    if-eqz v7, :cond_b

    throw v7

    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "sp$iterator":Ljava/util/Iterator;
    .restart local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieved "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from PPS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "sp$iterator":Ljava/util/Iterator;
    .end local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "sp$iterator":Ljava/util/Iterator;
    .restart local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    throw v7

    :catch_2
    move-exception v7

    goto :goto_5

    :cond_8
    return-object v5

    .end local v4    # "sp$iterator":Ljava/util/Iterator;
    :cond_9
    :try_start_8
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v8, "Failed to build HomeSP"

    invoke-direct {v6, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_3
    move-exception v8

    if-nez v7, :cond_a

    move-object v7, v8

    goto :goto_4

    :cond_a
    if-eq v7, v8, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    throw v6

    .local v0, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_2
.end method

.method public removeSP(Ljava/lang/String;)V
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No HS20 profile to delete for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting HS20 profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->writeMO(Ljava/util/Collection;Ljava/io/File;)V

    return-void
.end method

.method public updateAndSaveAllSps(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v0, 0x0

    .local v0, "dirty":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "newSet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .local v5, "spClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "homeSP$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Passed HomeSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v1, "existing":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "New HomeSP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->deepEquals(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClone(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-equal HomeSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keeping HomeSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "existing":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Saving all SPs (%s): current %s (%d), new %s (%d)"

    const/4 v6, 0x5

    new-array v9, v6, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v6, "dirty"

    :goto_1
    const/4 v10, 0x0

    aput-object v6, v9, v10

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->fqdnList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v9, v10

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->fqdnList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v9, v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not persisting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v6, "clean"

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->rewriteMO(Ljava/util/Collection;Ljava/util/Map;Ljava/io/File;)V

    return-void
.end method
