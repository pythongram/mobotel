.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;
.super Ljava/util/TimerTask;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 932
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$searchId:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 936
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->cancel()Z

    .line 937
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 938
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1402(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_24

    .line 942
    :goto_12
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$searchId:I

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1500(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V

    .line 943
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 952
    return-void

    .line 939
    :catch_24
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12
.end method
