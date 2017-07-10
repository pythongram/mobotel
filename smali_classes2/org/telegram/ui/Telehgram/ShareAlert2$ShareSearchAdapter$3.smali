.class Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;
.super Ljava/util/TimerTask;
.source "ShareAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    .prologue
    .line 863
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->val$searchId:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 867
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->cancel()Z

    .line 868
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2400(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 869
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2402(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_1c

    .line 873
    :goto_12
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->val$query:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;->val$searchId:I

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2500(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/lang/String;I)V

    .line 874
    return-void

    .line 870
    :catch_1c
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12
.end method
