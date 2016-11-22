.class final Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;
.super Ljava/lang/Object;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteAvrcpData"
.end annotation


# instance fields
.field absVolNotificationState:I

.field private mCompanyIDSupported:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsSupported:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

.field private mNotifyEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteFeatures:I

.field private mSupportedApplicationSettingsAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;",
            ">;"
        }
    .end annotation
.end field

.field playerSettingAttribIdFetch:I

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mCompanyIDSupported:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mEventsSupported:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mMetadata:Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mNotifyEvent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mSupportedApplicationSettingsAttribute:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mCompanyIDSupported:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mEventsSupported:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mMetadata:Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mNotifyEvent:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mSupportedApplicationSettingsAttribute:Ljava/util/ArrayList;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    return-void
.end method
