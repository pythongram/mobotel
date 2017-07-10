.class public Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Latvian"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1930
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x1

    .line 1932
    if-nez p1, :cond_4

    .line 1937
    :goto_3
    return v0

    .line 1934
    :cond_4
    rem-int/lit8 v1, p1, 0xa

    if-ne v1, v0, :cond_10

    rem-int/lit8 v0, p1, 0x64

    const/16 v1, 0xb

    if-eq v0, v1, :cond_10

    .line 1935
    const/4 v0, 0x2

    goto :goto_3

    .line 1937
    :cond_10
    const/4 v0, 0x0

    goto :goto_3
.end method
