.class public Lorg/telegram/messenger/LocaleController$PluralRules_One;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_One"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1879
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 1881
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x2

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
