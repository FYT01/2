.class Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanNative"
.end annotation


# static fields
.field private static final ALL_PASS_FILTER_INDEX_BATCH_SCAN:I = 0x2

.field private static final ALL_PASS_FILTER_INDEX_REGULAR_SCAN:I = 0x1

.field private static final ALL_PASS_FILTER_SELECTION:I = 0x0

.field private static final DELIVERY_MODE_BATCH:I = 0x2

.field private static final DELIVERY_MODE_IMMEDIATE:I = 0x0

.field private static final DELIVERY_MODE_ON_FOUND_LOST:I = 0x1

.field private static final DISCARD_OLDEST_WHEN_BUFFER_FULL:I = 0x0

.field private static final FILTER_LOGIC_TYPE:I = 0x1

.field private static final LIST_LOGIC_TYPE:I = 0x1111111

.field private static final MATCH_MODE_AGGRESSIVE_TIMEOUT_FACTOR:I = 0x1

.field private static final MATCH_MODE_STICKY_TIMEOUT_FACTOR:I = 0x3

.field private static final ONFOUND_SIGHTINGS_AGGRESSIVE:I = 0x1

.field private static final ONFOUND_SIGHTINGS_STICKY:I = 0x4

.field private static final ONLOST_FACTOR:I = 0x2

.field private static final ONLOST_ONFOUND_BASE_TIMEOUT_MS:I = 0x1f4

.field private static final SCAN_MODE_BALANCED_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BALANCED_WINDOW_MS:I = 0x7d0

.field private static final SCAN_MODE_BATCH_BALANCED_INTERVAL_MS:I = 0x3a98

.field private static final SCAN_MODE_BATCH_BALANCED_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_POWER_INTERVAL_MS:I = 0x249f0

.field private static final SCAN_MODE_BATCH_LOW_POWER_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_LATENCY_WINDOW_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_WINDOW_MS:I = 0x1f4


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllPassBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllPassRegularClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanIntervalIntent:Landroid/app/PendingIntent;

.field private final mClientFilterIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFilterIndexStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/bluetooth/gatt/ScanManager;

    .prologue
    const/4 v4, 0x0

    .line 361
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    .line 356
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    .line 362
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    .line 363
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    .line 365
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v0, "batchIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    new-instance v2, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;-><init>(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;)V

    invoke-static {p1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-set1(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 386
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->-get1(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/bluetooth/gatt/GattService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->-set2(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    .line 361
    return-void
.end method

.method private addFilterToController(ILcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V
    .locals 22
    .param p1, "clientIf"    # I
    .param p2, "entry"    # Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    .param p3, "filterIndex"    # I

    .prologue
    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addFilterToController: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 825
    move-object/from16 v0, p2

    iget-byte v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    packed-switch v2, :pswitch_data_0

    .line 823
    :goto_0
    :pswitch_0
    return-void

    .line 827
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 828
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 829
    const-wide/16 v14, 0x0

    .line 830
    const-string/jumbo v16, ""

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    move/from16 v18, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 828
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto :goto_0

    .line 834
    :pswitch_2
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 835
    const-wide/16 v14, 0x0

    .line 836
    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    move-object/from16 v20, v0

    .line 834
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 836
    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    .line 834
    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto :goto_0

    .line 841
    :pswitch_3
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 842
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    .line 843
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    .line 844
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 845
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    .line 846
    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 841
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 846
    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    .line 841
    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    .line 850
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "adding filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 852
    const-wide/16 v14, 0x0

    .line 853
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 851
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 853
    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    .line 851
    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    .line 857
    :pswitch_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    array-length v0, v2

    move/from16 v21, v0

    .line 858
    .local v21, "len":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    array-length v2, v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_0

    .line 859
    return-void

    .line 860
    :cond_0
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    .line 861
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    .line 862
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    move-object/from16 v20, v0

    .line 861
    const/16 v18, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    .line 860
    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V
    .locals 15
    .param p1, "clientIf"    # I
    .param p2, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .param p3, "featureSelection"    # I
    .param p4, "filterIndex"    # I
    .param p5, "numOfTrackingEntries"    # I

    .prologue
    .line 882
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v9

    .line 883
    .local v9, "deliveryMode":I
    const/16 v7, -0x80

    .line 884
    .local v7, "rssiThreshold":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 885
    .local v14, "settings":Landroid/bluetooth/le/ScanSettings;
    const/4 v2, 0x1

    invoke-direct {p0, v14, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I

    move-result v10

    .line 886
    .local v10, "onFoundTimeout":I
    const/4 v2, 0x0

    invoke-direct {p0, v14, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I

    move-result v11

    .line 887
    .local v11, "onLostTimeout":I
    invoke-direct {p0, v14}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostSightings(Landroid/bluetooth/le/ScanSettings;)I

    move-result v12

    .line 888
    .local v12, "onFoundCount":I
    const/16 v11, 0x2710

    .line 889
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "configureFilterParamter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 890
    const-string/jumbo v4, " "

    .line 889
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 891
    new-instance v1, Lcom/android/bluetooth/gatt/FilterParams;

    .line 892
    const v5, 0x1111111

    const/4 v6, 0x1

    move/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p3

    move v8, v7

    move/from16 v13, p5

    .line 891
    invoke-direct/range {v1 .. v13}, Lcom/android/bluetooth/gatt/FilterParams;-><init>(IIIIIIIIIIII)V

    .line 894
    .local v1, "FiltValue":Lcom/android/bluetooth/gatt/FilterParams;
    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamAddNative(Lcom/android/bluetooth/gatt/FilterParams;)V

    .line 881
    return-void
.end method

.method private configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 14
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 685
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 686
    .local v1, "clientIf":I
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v7

    .line 687
    .local v7, "deliveryMode":I
    const/4 v12, 0x0

    .line 688
    .local v12, "trackEntries":I
    invoke-direct {p0, p1, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    return-void

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 693
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterEnableNative(IZ)V

    .line 694
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 696
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    .line 698
    const/4 v4, 0x2

    .line 699
    .local v4, "filterIndex":I
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 701
    const/4 v3, 0x0

    .line 702
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 701
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V

    .line 703
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    move v5, v12

    .line 684
    .end local v4    # "filterIndex":I
    .end local v12    # "trackEntries":I
    .local v5, "trackEntries":I
    :goto_1
    return-void

    .line 698
    .end local v5    # "trackEntries":I
    .restart local v12    # "trackEntries":I
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "filterIndex":I
    goto :goto_0

    .line 705
    .end local v4    # "filterIndex":I
    :cond_2
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 706
    .local v6, "clientFilterIndices":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "filter$iterator":Ljava/util/Iterator;
    move v5, v12

    .end local v12    # "trackEntries":I
    .restart local v5    # "trackEntries":I
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/le/ScanFilter;

    .line 707
    .local v9, "filter":Landroid/bluetooth/le/ScanFilter;
    new-instance v11, Lcom/android/bluetooth/gatt/ScanFilterQueue;

    invoke-direct {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;-><init>()V

    .line 708
    .local v11, "queue":Lcom/android/bluetooth/gatt/ScanFilterQueue;
    invoke-virtual {v11, v9}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addScanFilter(Landroid/bluetooth/le/ScanFilter;)V

    .line 709
    invoke-virtual {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->getFeatureSelection()I

    move-result v3

    .line 710
    .local v3, "featureSelection":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 711
    .restart local v4    # "filterIndex":I
    :goto_3
    invoke-virtual {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 712
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 713
    invoke-virtual {v11}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->pop()Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    move-result-object v0

    invoke-direct {p0, v1, v0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->addFilterToController(ILcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V

    .line 714
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_3

    .line 716
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 717
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    .line 718
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I

    move-result v5

    .line 719
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->manageAllocationOfTrackingAdvertisement(IZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 720
    const-string/jumbo v0, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No hardware resources for onfound/onlost filter "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 724
    const/4 v2, 0x3

    .line 723
    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->onScanManagerErrorCallback(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    move-object v0, p0

    move-object v2, p1

    .line 730
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V

    .line 732
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 733
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 725
    :catch_0
    move-exception v8

    .line 726
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BtGatt.ScanManager"

    const-string/jumbo v2, "failed on onScanManagerCallback"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 735
    .end local v3    # "featureSelection":I
    .end local v4    # "filterIndex":I
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "filter":Landroid/bluetooth/le/ScanFilter;
    .end local v11    # "queue":Lcom/android/bluetooth/gatt/ScanFilterQueue;
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private native gattClientConfigBatchScanStorageNative(IIII)V
.end method

.method private native gattClientReadScanReportsNative(II)V
.end method

.method private native gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V
.end method

.method private native gattClientScanFilterClearNative(II)V
.end method

.method private native gattClientScanFilterDeleteNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V
.end method

.method private native gattClientScanFilterEnableNative(IZ)V
.end method

.method private native gattClientScanFilterParamAddNative(Lcom/android/bluetooth/gatt/FilterParams;)V
.end method

.method private native gattClientScanFilterParamClearAllNative(I)V
.end method

.method private native gattClientScanFilterParamDeleteNative(II)V
.end method

.method private native gattClientScanNative(Z)V
.end method

.method private native gattClientStartBatchScanNative(IIIIII)V
.end method

.method private native gattClientStopBatchScanNative(I)V
.end method

.method private native gattSetScanParametersNative(III)V
.end method

.method private getBatchScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 787
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 788
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_0

    .line 789
    return-object v0

    .line 792
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getBatchScanIntervalMillis(I)I
    .locals 1
    .param p1, "scanMode"    # I

    .prologue
    const v0, 0x249f0

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 578
    return v0

    .line 572
    :pswitch_0
    const/16 v0, 0x1388

    return v0

    .line 574
    :pswitch_1
    const/16 v0, 0x3a98

    return v0

    .line 576
    :pswitch_2
    return v0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 5

    .prologue
    .line 539
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    const/4 v3, 0x0

    return-object v3

    .line 542
    :cond_0
    new-instance v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    .line 545
    .local v2, "params":Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 546
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 547
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_1

    .line 548
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    goto :goto_0

    .line 550
    :cond_1
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    goto :goto_0

    .line 553
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_2
    return-object v2
.end method

.method private getBatchScanWindowMillis(I)I
    .locals 1
    .param p1, "scanMode"    # I

    .prologue
    const/16 v0, 0x5dc

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 565
    return v0

    .line 559
    :pswitch_0
    return v0

    .line 561
    :pswitch_1
    return v0

    .line 563
    :pswitch_2
    return v0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBatchTriggerIntervalMillis()J
    .locals 8

    .prologue
    .line 671
    const-wide v2, 0x7fffffffffffffffL

    .line 672
    .local v2, "intervalMillis":J
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 673
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 675
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    .line 674
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 678
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-wide v2
.end method

.method private getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I
    .locals 6
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v1, 0x0

    .line 899
    if-nez p1, :cond_0

    .line 900
    return v1

    .line 902
    :cond_0
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 903
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    if-nez v0, :cond_1

    .line 904
    return v1

    .line 906
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 907
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 908
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 910
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    :goto_0
    return v1

    .line 911
    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getFullScanStoragePercent(I)I
    .locals 1
    .param p1, "resultType"    # I

    .prologue
    const/16 v0, 0x32

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 534
    return v0

    .line 528
    :pswitch_0
    const/16 v0, 0x64

    return v0

    .line 530
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 532
    :pswitch_2
    return v0

    .line 526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I
    .locals 5
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    const/4 v2, 0x0

    return v2

    .line 971
    :cond_0
    const/4 v1, 0x0

    .line 973
    .local v1, "val":I
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    .line 978
    .local v0, "maxTotalTrackableAdvertisements":I
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 989
    const/4 v1, 0x1

    .line 990
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid setting for getNumOfMatches() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 992
    :goto_0
    return v1

    .line 980
    :pswitch_0
    const/4 v1, 0x1

    .line 981
    goto :goto_0

    .line 983
    :pswitch_1
    const/4 v1, 0x2

    .line 984
    goto :goto_0

    .line 986
    :pswitch_2
    div-int/lit8 v1, v0, 0x2

    goto :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getOnFoundOnLostSightings(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/4 v1, 0x1

    .line 959
    if-nez p1, :cond_0

    .line 960
    return v1

    .line 961
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 962
    return v1

    .line 964
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method private getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I
    .locals 3
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p2, "onFound"    # Z

    .prologue
    .line 949
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 950
    const/4 v0, 0x1

    .line 954
    .local v0, "factor":I
    :goto_0
    if-nez p2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 955
    :cond_0
    mul-int/lit16 v1, v0, 0x1f4

    return v1

    .line 952
    .end local v0    # "factor":I
    :cond_1
    const/4 v0, 0x3

    .restart local v0    # "factor":I
    goto :goto_0
.end method

.method private getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I
    .locals 2
    .param p1, "params"    # Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .prologue
    const/4 v1, -0x1

    .line 799
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v1, :cond_0

    .line 800
    const/4 v0, 0x3

    return v0

    .line 802
    :cond_0
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v1, :cond_1

    .line 803
    const/4 v0, 0x1

    return v0

    .line 805
    :cond_1
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v1, :cond_2

    .line 806
    const/4 v0, 0x2

    return v0

    .line 808
    :cond_2
    return v1
.end method

.method private getScanIntervalMillis(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/16 v1, 0x1388

    .line 931
    if-nez p1, :cond_0

    .line 932
    return v1

    .line 933
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 941
    return v1

    .line 935
    :pswitch_0
    return v1

    .line 937
    :pswitch_1
    return v1

    .line 939
    :pswitch_2
    return v1

    .line 933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getScanWindowMillis(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/16 v1, 0x1f4

    .line 915
    if-nez p1, :cond_0

    .line 916
    return v1

    .line 918
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 926
    return v1

    .line 920
    :pswitch_0
    const/16 v0, 0x1388

    return v0

    .line 922
    :pswitch_1
    const/16 v0, 0x7d0

    return v0

    .line 924
    :pswitch_2
    return v1

    .line 918
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initFilterIndexStack()V
    .locals 4

    .prologue
    .line 869
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v1

    .line 874
    .local v1, "maxFiltersSupported":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_0
    return-void
.end method

.method private isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 485
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageAllocationOfTrackingAdvertisement(IZ)Z
    .locals 6
    .param p1, "numOfTrackableAdvertisement"    # I
    .param p2, "allocate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 998
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v1

    .line 999
    .local v1, "maxTotalTrackableAdvertisements":I
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 1001
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1000
    sub-int v0, v1, v2

    .line 1002
    .local v0, "availableEntries":I
    if-eqz p2, :cond_1

    .line 1003
    if-lt v0, p1, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/gatt/ScanManager;->-set0(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1005
    return v5

    :cond_0
    monitor-exit v3

    .line 1007
    return v4

    .line 1010
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-le p1, v2, :cond_2

    monitor-exit v3

    .line 1011
    return v4

    .line 1013
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/gatt/ScanManager;->-set0(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1014
    return v5

    .line 999
    .end local v0    # "availableEntries":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private numRegularScanClients()I
    .locals 5

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "num":I
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 466
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return v2
.end method

.method private removeFilterIfExisits(Ljava/util/Set;II)V
    .locals 1
    .param p2, "clientIf"    # I
    .param p3, "filterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, "clients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 781
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    .line 782
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 773
    :cond_1
    return-void
.end method

.method private removeScanFilters(I)V
    .locals 5
    .param p1, "clientIf"    # I

    .prologue
    .line 757
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Deque;

    .line 758
    .local v2, "filterIndices":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 759
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 760
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filterIndex$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 761
    .local v0, "filterIndex":Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 762
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    .line 763
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_0

    .line 767
    .end local v0    # "filterIndex":Ljava/lang/Integer;
    .end local v1    # "filterIndex$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    .line 768
    const/4 v4, 0x1

    .line 767
    invoke-direct {p0, v3, p1, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    .line 769
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    .line 770
    const/4 v4, 0x2

    .line 769
    invoke-direct {p0, v3, p1, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    .line 756
    return-void
.end method

.method private resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 11
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v5, 0x0

    .line 489
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 490
    .local v1, "clientIf":I
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v7

    .line 492
    .local v7, "batchScanParams":Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager;->-set3(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .line 522
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    .line 488
    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v6, "stopping BLe Batch"

    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 495
    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStopBatchScanNative(I)V

    .line 496
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 499
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    goto :goto_0

    .line 503
    :cond_3
    const/16 v9, 0x5f

    .line 504
    .local v9, "notifyThreshold":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v6, "Starting BLE batch scan"

    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I

    move-result v2

    .line 506
    .local v2, "resultType":I
    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getFullScanStoragePercent(I)I

    move-result v8

    .line 507
    .local v8, "fullScanPercent":I
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 508
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configuring batch scan storage, appIf "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 509
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 510
    rsub-int/lit8 v6, v8, 0x64

    .line 509
    invoke-direct {p0, v0, v8, v6, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientConfigBatchScanStorageNative(IIII)V

    .line 511
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 512
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 514
    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanIntervalMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v3

    .line 516
    .local v3, "scanInterval":I
    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanWindowMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    .local v4, "scanWindow":I
    move-object v0, p0

    move v6, v5

    .line 517
    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStartBatchScanNative(IIIIII)V

    .line 519
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_1
.end method

.method private resetCountDownLatch()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set5(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 390
    return-void
.end method

.method private setBatchAlarm()V
    .locals 10

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 587
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    return-void

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchTriggerIntervalMillis()J

    move-result-wide v8

    .line 593
    .local v8, "batchTriggerIntervalMillis":J
    const-wide/16 v0, 0xa

    div-long v4, v8, v0

    .line 594
    .local v4, "windowLengthMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v8

    .line 595
    .local v2, "windowStartMillis":J
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    .line 597
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    .line 595
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 584
    return-void
.end method

.method private shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .param p2, "deliveryMode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 743
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 744
    return v0

    .line 747
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 748
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v0, 0x1

    .line 813
    if-nez p1, :cond_0

    .line 814
    return v0

    .line 816
    :cond_0
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    :cond_1
    return v0

    .line 819
    :cond_2
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-le v1, v2, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForCallback()Z
    .locals 5

    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 664
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get2(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->-get1(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set2(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    .line 661
    return-void
.end method

.method configureRegularScanParams()V
    .locals 7

    .prologue
    .line 404
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "configureRegularScanParams() - queue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 405
    const/high16 v1, -0x80000000

    .line 406
    .local v1, "curScanSetting":I
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 407
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    if-eqz v0, :cond_0

    .line 408
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "configureRegularScanParams() - ScanSetting Scan mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 412
    const-string/jumbo v6, " mLastConfiguredScanSetting="

    .line 411
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 412
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->-get5(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v6

    .line 411
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 414
    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_2

    .line 415
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->-get5(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 417
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanWindowMillis(Landroid/bluetooth/le/ScanSettings;)I

    move-result v3

    .line 418
    .local v3, "scanWindow":I
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanIntervalMillis(Landroid/bluetooth/le/ScanSettings;)I

    move-result v2

    .line 420
    .local v2, "scanInterval":I
    invoke-static {v3}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v3

    .line 421
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v2

    .line 422
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 423
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "configureRegularScanParams - scanInterval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 424
    const-string/jumbo v6, "configureRegularScanParams - scanWindow = "

    .line 423
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 425
    iget v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v4, v2, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(III)V

    .line 426
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 427
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v4, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set4(Lcom/android/bluetooth/gatt/ScanManager;I)I

    .line 403
    .end local v2    # "scanInterval":I
    .end local v3    # "scanWindow":I
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v4, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-set4(Lcom/android/bluetooth/gatt/ScanManager;I)I

    .line 431
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v5, "configureRegularScanParams() - queue emtpy, scan stopped"

    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method flushBatchResults(I)V
    .locals 4
    .param p1, "clientIf"    # I

    .prologue
    const/4 v3, -0x1

    .line 645
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flushPendingBatchResults - clientIf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v3, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 648
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    .line 649
    const/4 v1, 0x2

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    .line 650
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v3, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 654
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    .line 655
    const/4 v1, 0x1

    .line 654
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    .line 656
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 658
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    .line 644
    return-void
.end method

.method getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;)",
            "Lcom/android/bluetooth/gatt/ScanClient;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "cList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/bluetooth/gatt/ScanClient;>;"
    const/4 v3, 0x0

    .line 437
    .local v3, "result":Lcom/android/bluetooth/gatt/ScanClient;
    const/high16 v2, -0x80000000

    .line 438
    .local v2, "curScanSetting":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "result":Lcom/android/bluetooth/gatt/ScanClient;
    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 441
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 442
    move-object v3, v0

    .line 443
    .local v3, "result":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v2

    goto :goto_0

    .line 446
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    .end local v3    # "result":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-object v3
.end method

.method getClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 630
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 631
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_0

    return-object v0

    .line 633
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 473
    :cond_1
    return-void
.end method

.method startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v1, 0x1

    .line 450
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 450
    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 458
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 459
    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 449
    :cond_2
    return-void
.end method

.method stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 638
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 639
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 636
    :cond_0
    return-void
.end method

.method stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 9
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v8, 0x0

    .line 602
    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object p1

    .line 603
    if-nez p1, :cond_0

    return-void

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v0

    .line 605
    .local v0, "deliveryMode":I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 606
    iget-object v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "filter$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanFilter;

    .line 607
    .local v3, "filter":Landroid/bluetooth/le/ScanFilter;
    iget-object v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I

    move-result v2

    .line 608
    .local v2, "entriesToFree":I
    invoke-direct {p0, v2, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->manageAllocationOfTrackingAdvertisement(IZ)Z

    move-result v5

    if-nez v5, :cond_1

    .line 609
    const-string/jumbo v5, "BtGatt.ScanManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error freeing for onfound/onlost filter resources "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v5}, Lcom/android/bluetooth/gatt/ScanManager;->-get9(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v5

    iget v6, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 613
    const/4 v7, 0x3

    .line 612
    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/gatt/GattService;->onScanManagerErrorCallback(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "BtGatt.ScanManager"

    const-string/jumbo v6, "failed on onScanManagerCallback at freeing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 620
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entriesToFree":I
    .end local v3    # "filter":Landroid/bluetooth/le/ScanFilter;
    .end local v4    # "filter$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v5}, Lcom/android/bluetooth/gatt/ScanManager;->-get7(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 621
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v5

    if-nez v5, :cond_3

    .line 622
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v6, "stop scan"

    invoke-static {v5, v6}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 623
    invoke-direct {p0, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 625
    :cond_3
    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 600
    return-void
.end method
