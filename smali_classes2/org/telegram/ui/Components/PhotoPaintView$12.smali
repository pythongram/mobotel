.class Lorg/telegram/ui/Components/PhotoPaintView$12;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;

.field final synthetic val$okRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 515
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$12;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoPaintView$12;->val$okRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$12;->val$okRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 519
    return-void
.end method
