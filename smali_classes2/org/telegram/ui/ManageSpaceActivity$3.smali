.class Lorg/telegram/ui/ManageSpaceActivity$3;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageSpaceActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageSpaceActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ManageSpaceActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ManageSpaceActivity;->needLayout()V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_21

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 253
    :cond_20
    :goto_20
    return-void

    .line 250
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_20
.end method
