.class public Lorg/telegram/messenger/UserObject;
.super Ljava/lang/Object;
.source "UserObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .registers 4
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 39
    if-eqz p0, :cond_8

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    :cond_8
    const-string v0, "DELETED"

    .line 46
    :cond_a
    :goto_a
    return-object v0

    .line 42
    :cond_b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 43
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    .line 44
    :cond_15
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 46
    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "HiddenName"

    const v2, 0x7f07027c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .registers 5
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 31
    if-eqz p0, :cond_8

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 32
    :cond_8
    const-string v1, "HiddenName"

    const v2, 0x7f07027c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_11
    :goto_11
    return-object v0

    .line 34
    :cond_12
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public static isContact(Lorg/telegram/tgnet/TLRPC$User;)Z
    .registers 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 23
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z
    .registers 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 19
    if-eqz p0, :cond_e

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old2;

    if-nez v0, :cond_e

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    .registers 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 27
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old3;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
