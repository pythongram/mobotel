.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    .prologue
    .line 1289
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1292
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->needHideProgress()V

    .line 1293
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2002(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1294
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_5d

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1296
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1297
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1298
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1299
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1303
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1304
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->finishFragment()V

    .line 1305
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1323
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_5c
    :goto_5c
    return-void

    .line 1307
    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2502(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 1308
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v7, :cond_86

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v8, :cond_a4

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v4, :cond_a4

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_ab

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v8, :cond_a4

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v7, :cond_ab

    .line 1309
    :cond_a4
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1311
    :cond_ab
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_e9

    .line 1312
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1313
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1318
    :cond_c5
    :goto_c5
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v2, v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1319
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v7, :cond_5c

    .line 1320
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_5c

    .line 1314
    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v7, :cond_c5

    .line 1315
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1316
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto :goto_c5
.end method
