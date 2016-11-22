.class public final Lcom/android/mail/providers/UIProvider$CursorStatus;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CursorStatus"
.end annotation


# static fields
.field public static final COMPLETE:I = 0x8

.field public static final ERROR:I = 0x4

.field public static final LOADED:I = 0x2

.field public static final LOADING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWaitingForResults(I)Z
    .locals 2
    .param p0, "cursorStatus"    # I

    .prologue
    const/4 v0, 0x0

    .line 1692
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
