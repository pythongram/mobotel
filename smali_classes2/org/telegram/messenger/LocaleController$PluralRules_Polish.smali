.class public Lorg/telegram/messenger/LocaleController$PluralRules_Polish;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Polish"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1865
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 6
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x2

    .line 1867
    rem-int/lit8 v1, p1, 0x64

    .line 1868
    .local v1, "rem100":I
    rem-int/lit8 v0, p1, 0xa

    .line 1869
    .local v0, "rem10":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    .line 1874
    :goto_8
    return v2

    .line 1871
    :cond_9
    if-lt v0, v2, :cond_21

    const/4 v2, 0x4

    if-gt v0, v2, :cond_21

    const/16 v2, 0xc

    if-lt v1, v2, :cond_16

    const/16 v2, 0xe

    if-le v1, v2, :cond_21

    :cond_16
    const/16 v2, 0x16

    if-lt v1, v2, :cond_1e

    const/16 v2, 0x18

    if-le v1, v2, :cond_21

    .line 1872
    :cond_1e
    const/16 v2, 0x8

    goto :goto_8

    .line 1874
    :cond_21
    const/4 v2, 0x0

    goto :goto_8
.end method
