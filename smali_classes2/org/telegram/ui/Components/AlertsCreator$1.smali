.class final Lorg/telegram/ui/Components/AlertsCreator$1;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 242
    iput-wide p1, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    .line 245
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    .line 246
    .local v5, "untilTime":I
    if-nez p2, :cond_71

    .line 247
    add-int/lit16 v5, v5, 0xe10

    .line 256
    :cond_e
    :goto_e
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 257
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 259
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne p2, v10, :cond_84

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify2_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-wide/16 v2, 0x1

    .line 267
    .local v2, "flags":J
    :goto_37
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 268
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 269
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 271
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_6b

    .line 272
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 273
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 275
    :cond_6b
    iget-wide v6, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 276
    return-void

    .line 248
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "flags":J
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_71
    const/4 v6, 0x1

    if-ne p2, v6, :cond_77

    .line 249
    add-int/lit16 v5, v5, 0x7080

    goto :goto_e

    .line 250
    :cond_77
    if-ne p2, v11, :cond_7e

    .line 251
    const v6, 0x2a300

    add-int/2addr v5, v6

    goto :goto_e

    .line 252
    :cond_7e
    if-ne p2, v10, :cond_e

    .line 253
    const v5, 0x7fffffff

    goto :goto_e

    .line 263
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify2_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyuntil_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    int-to-long v6, v5

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    const-wide/16 v8, 0x1

    or-long v2, v6, v8

    .restart local v2    # "flags":J
    goto/16 :goto_37
.end method
