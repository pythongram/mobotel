.class public Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Macedonian"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1906
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 1908
    rem-int/lit8 v0, p1, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xb

    if-eq p1, v0, :cond_b

    .line 1909
    const/4 v0, 0x2

    .line 1911
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
