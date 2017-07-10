.class final Lorg/telegram/ui/Components/AlertsCreator$12;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # I

    .prologue
    const/16 v1, 0x10

    .line 817
    if-nez p1, :cond_e

    .line 818
    const-string v0, "ShortMessageLifetimeForever"

    const v1, 0x7f07050d

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 832
    :goto_d
    return-object v0

    .line 819
    :cond_e
    const/4 v0, 0x1

    if-lt p1, v0, :cond_18

    if-ge p1, v1, :cond_18

    .line 820
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 821
    :cond_18
    if-ne p1, v1, :cond_21

    .line 822
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 823
    :cond_21
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2c

    .line 824
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 825
    :cond_2c
    const/16 v0, 0x12

    if-ne p1, v0, :cond_37

    .line 826
    const/16 v0, 0xe10

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 827
    :cond_37
    const/16 v0, 0x13

    if-ne p1, v0, :cond_43

    .line 828
    const v0, 0x15180

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 829
    :cond_43
    const/16 v0, 0x14

    if-ne p1, v0, :cond_4f

    .line 830
    const v0, 0x93a80

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 832
    :cond_4f
    const-string v0, ""

    goto :goto_d
.end method
