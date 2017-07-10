.class Lorg/telegram/ui/Components/ChatActivityEnterView$10;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private visibleToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 794
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_8f

    const/4 v1, 0x1

    :goto_c
    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z
    invoke-static {v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3902(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_92

    const v1, 0x7f020201

    :goto_20
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silent_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 805
    :try_start_5e
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->visibleToast:Landroid/widget/Toast;

    if-eqz v1, :cond_67

    .line 806
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->visibleToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_96

    .line 811
    :cond_67
    :goto_67
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 812
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ChannelNotifyMembersInfoOff"

    const v4, 0x7f07014a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->visibleToast:Landroid/widget/Toast;

    .line 816
    :goto_84
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->visibleToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 817
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 818
    return-void

    :cond_8f
    move v1, v2

    .line 800
    goto/16 :goto_c

    .line 801
    :cond_92
    const v1, 0x7f020202

    goto :goto_20

    .line 808
    :catch_96
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_67

    .line 814
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ChannelNotifyMembersInfoOn"

    const v4, 0x7f07014b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$10;->visibleToast:Landroid/widget/Toast;

    goto :goto_84
.end method
