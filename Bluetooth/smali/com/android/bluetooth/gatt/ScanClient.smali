.class Lcom/android/bluetooth/gatt/ScanClient;
.super Ljava/lang/Object;
.source "ScanClient.java"


# static fields
.field private static final DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field appDied:Z

.field clientIf:I

.field filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field hasLocationPermission:Z

.field hasPeersMacAddressPermission:Z

.field isServer:Z

.field legacyForegroundApp:Z

.field settings:Landroid/bluetooth/le/ScanSettings;

.field storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field uuids:[Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 47
    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    .line 32
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 7
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    const/4 v5, 0x0

    .line 50
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method constructor <init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;)V
    .locals 7
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 58
    return-void
.end method

.method constructor <init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p5, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method constructor <init>(IZ[Ljava/util/UUID;)V
    .locals 7
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "uuids"    # [Ljava/util/UUID;

    .prologue
    const/4 v5, 0x0

    .line 54
    sget-object v4, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 53
    return-void
.end method

.method private constructor <init>(IZ[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "uuids"    # [Ljava/util/UUID;
    .param p4, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p5, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p6, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 70
    iput-boolean p2, p0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    .line 71
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .line 72
    iput-object p4, p0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 73
    iput-object p5, p0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    .line 74
    iput-object p6, p0, Lcom/android/bluetooth/gatt/ScanClient;->storages:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_0

    .line 80
    return v1

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanClient;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 83
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 86
    .local v0, "other":Lcom/android/bluetooth/gatt/ScanClient;
    iget v3, p0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iget v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
