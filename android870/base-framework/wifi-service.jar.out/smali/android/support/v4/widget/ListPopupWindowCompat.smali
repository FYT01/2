.class public Landroid/support/v4/widget/ListPopupWindowCompat;
.super Ljava/lang/Object;
.source "ListPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;,
        Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;,
        Landroid/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ListPopupWindowCompat;->IMPL:Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ListPopupWindowCompat;->IMPL:Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "listPopupWindow"    # Ljava/lang/Object;
    .param p1, "src"    # Landroid/view/View;

    .prologue
    sget-object v0, Landroid/support/v4/widget/ListPopupWindowCompat;->IMPL:Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;->createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method