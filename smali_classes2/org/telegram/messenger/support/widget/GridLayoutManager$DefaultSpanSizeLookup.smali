.class public final Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1057
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .registers 4
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 1066
    rem-int v0, p1, p2

    return v0
.end method

.method public getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1061
    const/4 v0, 0x1

    return v0
.end method
