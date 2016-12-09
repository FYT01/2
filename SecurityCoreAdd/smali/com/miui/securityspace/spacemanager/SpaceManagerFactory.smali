.class public Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;
.super Ljava/lang/Object;
.source "SpaceManagerFactory.java"


# static fields
.field private static final DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_HONGMI_KEY:Ljava/lang/String; = "is_hongmi"

.field private static final IS_XIAOMI_KEY:Ljava/lang/String; = "is_xiaomi"

.field private static final TAG:Ljava/lang/String; = "spacemanager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    const-string v1, "gemini"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    const-string v1, "gold"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    const-string v1, "capricorn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    const-string v1, "natrium"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    const-string v1, "scorpio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    const-string v1, "lithium"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getSpaceManager(Landroid/content/Context;)Lcom/miui/securityspace/spacemanager/ISpaceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->supportEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "spacemanager"

    const-string v1, "support Encrypt , use SDKSpaceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/miui/securityspace/spacemanager/SDKSpaceManager;

    invoke-direct {v0, p0}, Lcom/miui/securityspace/spacemanager/SDKSpaceManager;-><init>(Landroid/content/Context;)V

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "spacemanager"

    const-string v1, "don\'t support Encrypt , use NormalSpaceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lcom/miui/securityspace/spacemanager/NormalSpaceManager;

    invoke-direct {v0, p0}, Lcom/miui/securityspace/spacemanager/NormalSpaceManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static isMiDevice()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    const-string v2, "is_xiaomi"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "is_xiaomi"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const-string v2, "is_hongmi"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "is_hongmi"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private static supportEncrypt()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->isMiDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/securityspace/spacemanager/SpaceManagerFactory;->DEVICE_NOT_SUPPORT_ENCRYPT:Ljava/util/List;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
