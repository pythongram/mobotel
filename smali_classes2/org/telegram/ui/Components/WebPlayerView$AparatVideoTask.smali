.class Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AparatVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .registers 4
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 801
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->canRetry:Z

    .line 799
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    .line 802
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->videoId:Ljava/lang/String;

    .line 803
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 795
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 16
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 806
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "http://www.aparat.com/video/video/embed/vt/frame/showvideo/yes/videohash/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->videoId:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, "playerCode":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 808
    const/4 v8, 0x0

    .line 831
    :goto_1d
    return-object v8

    .line 811
    :cond_1e
    :try_start_1e
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$2400()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 812
    .local v3, "filelist":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 813
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 814
    .local v5, "jsonCode":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 815
    .local v4, "json":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_37
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_6e

    .line 816
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 817
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_4a

    .line 815
    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 820
    :cond_4a
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 821
    .local v6, "object":Lorg/json/JSONObject;
    const-string v8, "file"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 824
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "file"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 825
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "other"

    aput-object v10, v8, v9
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_69} :catch_6a

    goto :goto_47

    .line 828
    .end local v0    # "a":I
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "filelist":Ljava/util/regex/Matcher;
    .end local v4    # "json":Lorg/json/JSONArray;
    .end local v5    # "jsonCode":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_6a
    move-exception v2

    .line 829
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 831
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_76

    const/4 v8, 0x0

    goto :goto_1d

    :cond_76
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    goto :goto_1d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 795
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 836
    if-eqz p1, :cond_33

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 843
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 848
    :cond_32
    :goto_32
    return-void

    .line 845
    :cond_33
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_32
.end method
