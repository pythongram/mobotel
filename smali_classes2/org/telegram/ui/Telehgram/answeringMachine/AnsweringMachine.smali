.class public Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;
.super Ljava/lang/Object;
.source "AnsweringMachine.java"


# static fields
.field private static pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ProcessMsg(Lorg/telegram/messenger/MessageObject;)Z
    .registers 10
    .param p0, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const v8, 0x7f070647

    const/4 v7, 0x0

    .line 26
    sget-object v4, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->pref:Landroid/content/SharedPreferences;

    const-string v5, "answeringmachine"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 27
    sget-object v4, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->pref:Landroid/content/SharedPreferences;

    const-string v5, "answeringmachineanswer"

    const-string v6, "AnsweringmachineDefaulttext"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5d

    .line 28
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 29
    .local v2, "userid":J
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 30
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5d

    if-eqz v1, :cond_5d

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v4, :cond_5d

    .line 31
    sget-object v4, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->pref:Landroid/content/SharedPreferences;

    const-string v5, "answeringmachineanswer"

    const-string v6, "AnsweringmachineDefaulttext"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->isOk(Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 33
    invoke-static {v0, v2, v3, p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->SendText(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V

    .line 34
    invoke-static {v2, v3}, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->add(J)V

    .line 39
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "userid":J
    :cond_5d
    return v7
.end method

.method public static ProcessMsgs(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "listofdialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 49
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 50
    .local v1, "m":Lorg/telegram/messenger/MessageObject;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine$1;-><init>(Lorg/telegram/messenger/MessageObject;)V

    mul-int/lit8 v4, v0, 0xa

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v1    # "m":Lorg/telegram/messenger/MessageObject;
    :cond_20
    return-void
.end method

.method public static SendText(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V
    .registers 15
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "userid"    # J
    .param p3, "msgforreplay"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 44
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 45
    return-void
.end method
