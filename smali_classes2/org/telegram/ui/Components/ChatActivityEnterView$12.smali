.class Lorg/telegram/ui/Components/ChatActivityEnterView$12;
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

.field final synthetic val$fragment:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 842
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->val$fragment:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 844
    const/16 v2, 0x438

    const/16 v3, 0x780

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 845
    .local v14, "createBitmap":Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 846
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->savePainting(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/Bitmap;)V

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tellgram_painting.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, "str":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v0, "arrayList":Ljava/util/ArrayList;
    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .line 850
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->val$fragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 852
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-instance v11, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$12;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->val$fragment:Lorg/telegram/ui/ChatActivity;

    const/4 v13, 0x1

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/PhotoViewer;->openForPaint(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;Z)V

    .line 862
    return-void
.end method
