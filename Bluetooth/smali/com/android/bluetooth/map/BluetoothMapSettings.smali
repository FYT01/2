.class public Lcom/android/bluetooth/map/BluetoothMapSettings;
.super Landroid/app/Activity;
.source "BluetoothMapSettings.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSettings"

.field private static final V:Z


# instance fields
.field mGroups:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettings;->V:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSettings;->setContentView(I)V

    .line 44
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mGroups:Ljava/util/LinkedHashMap;

    .line 49
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 51
    .local v1, "listView":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    .line 52
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mGroups:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->getAccountsEnabledCount()I

    move-result v3

    .line 51
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V

    .line 53
    .local v0, "adapter":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 39
    return-void
.end method
