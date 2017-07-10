.class Lorg/telegram/ui/ArticleViewer$10;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 1468
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenMenu()Z
    .registers 4

    .prologue
    .line 1502
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    # invokes: Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;
    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;I)Ljava/io/File;

    move-result-object v0

    .line 1503
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public onItemClick(I)V
    .registers 12
    .param p1, "id"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1471
    const/4 v5, -0x1

    if-ne p1, v5, :cond_c

    .line 1472
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 1498
    :cond_b
    :goto_b
    return-void

    .line 1473
    :cond_c
    if-ne p1, v3, :cond_9f

    .line 1474
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_33

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    .line 1475
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v5, v3, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_b

    .line 1478
    :cond_33
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    # invokes: Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;
    invoke-static {v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;I)Ljava/io/File;

    move-result-object v2

    .line 1479
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1480
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentIndex:I
    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v8

    # invokes: Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z
    invoke-static {v7, v8}, Lorg/telegram/ui/ArticleViewer;->access$4300(Lorg/telegram/ui/ArticleViewer;I)Z

    move-result v7

    if-eqz v7, :cond_63

    :goto_5f
    invoke-static {v5, v6, v3, v9, v9}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_63
    move v3, v4

    goto :goto_5f

    .line 1482
    :cond_65
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1483
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1484
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1485
    const-string v3, "PleaseDownload"

    const v4, 0x7f07045b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1486
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    goto/16 :goto_b

    .line 1488
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "f":Ljava/io/File;
    :cond_9f
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a9

    .line 1489
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->onSharePressed()V
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$4400(Lorg/telegram/ui/ArticleViewer;)V

    goto/16 :goto_b

    .line 1490
    :cond_a9
    const/4 v3, 0x3

    if-ne p1, v3, :cond_b

    .line 1492
    :try_start_ac
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentIndex:I
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    # invokes: Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;
    invoke-static {v3, v4}, Lorg/telegram/ui/ArticleViewer;->access$4500(Lorg/telegram/ui/ArticleViewer;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/tgnet/TLObject;Landroid/app/Activity;)V

    .line 1493
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$10;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c7} :catch_c9

    goto/16 :goto_b

    .line 1494
    :catch_c9
    move-exception v1

    .line 1495
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b
.end method
