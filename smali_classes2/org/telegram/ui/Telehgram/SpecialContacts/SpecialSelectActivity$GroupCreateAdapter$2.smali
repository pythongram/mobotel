.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;
.super Ljava/util/TimerTask;
.source "SpecialSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    .prologue
    .line 939
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 943
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$2600(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 944
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$2602(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_18

    .line 949
    :goto_f
    new-instance v1, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1008
    return-void

    .line 945
    :catch_18
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
