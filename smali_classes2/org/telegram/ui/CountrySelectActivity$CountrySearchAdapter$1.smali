.class Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;
.super Ljava/util/TimerTask;
.source "CountrySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    .prologue
    .line 377
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    # getter for: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$800(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$802(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_17

    .line 386
    :goto_f
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$1;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->processSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$900(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/lang/String;)V

    .line 387
    return-void

    .line 383
    :catch_17
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
