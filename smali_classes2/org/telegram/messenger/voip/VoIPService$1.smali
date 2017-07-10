.class Lorg/telegram/messenger/voip/VoIPService$1;
.super Landroid/content/BroadcastReceiver;
.source "VoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 168
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 169
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-string v6, "state"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_46

    :goto_18
    # setter for: Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z
    invoke-static {v5, v3}, Lorg/telegram/messenger/voip/VoIPService;->access$002(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 170
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$000(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 171
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 173
    :cond_40
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z
    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->access$202(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 216
    :cond_45
    :goto_45
    return-void

    :cond_46
    move v3, v4

    .line 169
    goto :goto_18

    .line 174
    :cond_48
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 175
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$300(Lorg/telegram/messenger/voip/VoIPService;)V

    goto :goto_45

    .line 176
    :cond_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".END_CALL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 177
    const-string v5, "end_hash"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->endHash:I
    invoke-static {v5}, Lorg/telegram/messenger/voip/VoIPService;->access$400(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v5

    if-ne v4, v5, :cond_45

    .line 178
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/voip/VoIPService;->stopForeground(Z)V

    .line 179
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    goto :goto_45

    .line 181
    :cond_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".DECLINE_CALL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 182
    const-string v5, "end_hash"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->endHash:I
    invoke-static {v5}, Lorg/telegram/messenger/voip/VoIPService;->access$400(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v5

    if-ne v4, v5, :cond_45

    .line 183
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/voip/VoIPService;->stopForeground(Z)V

    .line 184
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    goto/16 :goto_45

    .line 186
    :cond_d5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ANSWER_CALL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    .line 187
    const-string v3, "end_hash"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->endHash:I
    invoke-static {v4}, Lorg/telegram/messenger/voip/VoIPService;->access$400(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v4

    if-ne v3, v4, :cond_45

    .line 188
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->showNotification()V
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$500(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 189
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_13f

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_13f

    .line 191
    :try_start_11b
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-class v7, Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_135} :catch_137

    goto/16 :goto_45

    .line 192
    :catch_137
    move-exception v2

    .line 193
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "Error starting permission activity"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 197
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_13f
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 199
    :try_start_144
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-class v7, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x30000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_15e} :catch_160

    goto/16 :goto_45

    .line 200
    :catch_160
    move-exception v2

    .line 201
    .restart local v2    # "x":Ljava/lang/Exception;
    const-string v3, "Error starting incall activity"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 204
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_168
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_186

    .line 206
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_184

    :goto_17f
    # invokes: Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V
    invoke-static {v5, v3}, Lorg/telegram/messenger/voip/VoIPService;->access$600(Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto/16 :goto_45

    :cond_184
    move v3, v4

    goto :goto_17f

    .line 207
    :cond_186
    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 208
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 209
    .local v0, "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_19c

    .line 210
    .end local v0    # "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    :cond_1ac
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 211
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "state":Ljava/lang/String;
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 213
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    goto/16 :goto_45
.end method
