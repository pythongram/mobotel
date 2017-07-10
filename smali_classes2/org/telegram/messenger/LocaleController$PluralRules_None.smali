.class public Lorg/telegram/messenger/LocaleController$PluralRules_None;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_None"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1885
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 1887
    const/4 v0, 0x0

    return v0
.end method
