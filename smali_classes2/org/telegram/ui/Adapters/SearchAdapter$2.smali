.class Lorg/telegram/ui/Adapters/SearchAdapter$2;
.super Ljava/util/TimerTask;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$000(Lorg/telegram/ui/Adapters/SearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$002(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_17

    .line 110
    :goto_f
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$2;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/SearchAdapter;->processSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$100(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    .line 111
    return-void

    .line 107
    :catch_17
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
