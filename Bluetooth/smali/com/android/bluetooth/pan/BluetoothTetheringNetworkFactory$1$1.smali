.class Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;
.super Landroid/net/NetworkAgent;
.source "BluetoothTetheringNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p1, "this$1"    # Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/content/Context;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Landroid/net/NetworkInfo;
    .param p6, "$anonymous4"    # Landroid/net/NetworkCapabilities;
    .param p7, "$anonymous5"    # Landroid/net/LinkProperties;
    .param p8, "$anonymous6"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;->this$1:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 116
    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;->this$1:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    iget-object v0, v0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->-wrap1(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    .line 117
    return-void
.end method
