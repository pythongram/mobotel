.class Lorg/telegram/ui/ArticleViewer$27;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V
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
    .line 2304
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$27;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2307
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$27;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/16 v1, 0x78

    # invokes: Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$6300(Lorg/telegram/ui/ArticleViewer;I)V

    .line 2308
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$27;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$6402(Lorg/telegram/ui/ArticleViewer;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2309
    return-void
.end method
