.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;
.super Ljava/util/TimerTask;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1930
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1934
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5500(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1935
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5502(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_17

    .line 1939
    :goto_f
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    .line 1940
    return-void

    .line 1936
    :catch_17
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
