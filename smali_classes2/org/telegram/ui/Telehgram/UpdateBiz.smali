.class public Lorg/telegram/ui/Telehgram/UpdateBiz;
.super Ljava/lang/Object;
.source "UpdateBiz.java"


# instance fields
.field private dba:Lorg/telegram/ui/Telehgram/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/telegram/ui/Telehgram/a;

    invoke-direct {v0}, Lorg/telegram/ui/Telehgram/a;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateBiz;->dba:Lorg/telegram/ui/Telehgram/a;

    return-void
.end method

.method private formatUserSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "var4":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_12
    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 21
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_28
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    .line 28
    const-string v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public insertUpdate(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Update;)Z
    .registers 10
    .param p1, "var1"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "var2"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "var4":Z
    move v0, v2

    .line 38
    .local v0, "var3":I
    iget v4, p2, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_d

    .line 39
    if-nez p1, :cond_f

    .line 40
    move v0, v2

    .end local v0    # "var3":I
    :cond_d
    :goto_d
    move v1, v0

    .line 68
    .local v1, "var3":I
    :goto_e
    return v1

    .line 42
    .end local v1    # "var3":I
    .restart local v0    # "var3":I
    :cond_f
    new-instance v3, Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-direct {v3}, Lorg/telegram/ui/Telehgram/UpdateModel;-><init>()V

    .line 43
    .local v3, "var5":Lorg/telegram/ui/Telehgram/UpdateModel;
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setUserId(I)V

    .line 44
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setNew(Z)V

    .line 45
    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v4, :cond_52

    .line 46
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lorg/telegram/ui/Telehgram/UpdateBiz;->formatUserSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setOldValue(Ljava/lang/String;)V

    .line 47
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lorg/telegram/ui/Telehgram/UpdateBiz;->formatUserSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setNewValue(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setType(I)V

    .line 62
    :goto_3f
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateBiz;->dba:Lorg/telegram/ui/Telehgram/a;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Telehgram/a;->a(Lorg/telegram/ui/Telehgram/UpdateModel;)Ljava/lang/Long;

    .line 63
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x1

    .local v0, "var3":Z
    goto :goto_d

    .line 49
    .local v0, "var3":I
    :cond_52
    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v4, :cond_65

    .line 50
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setOldValue(Ljava/lang/String;)V

    .line 51
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setNewValue(Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setType(I)V

    goto :goto_3f

    .line 54
    :cond_65
    move v0, v2

    .line 55
    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-nez v4, :cond_6c

    move v1, v0

    .line 56
    .end local v0    # "var3":I
    .restart local v1    # "var3":I
    goto :goto_e

    .line 59
    .end local v1    # "var3":I
    .restart local v0    # "var3":I
    :cond_6c
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/UpdateModel;->setType(I)V

    goto :goto_3f
.end method
