.class Lnet/hockeyapp/android/PaintActivity$1;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/PaintActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/PaintActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/PaintActivity;)V
    .registers 2
    .param p1, "this$0"    # Lnet/hockeyapp/android/PaintActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    packed-switch p2, :pswitch_data_10

    .line 151
    :goto_3
    return-void

    .line 140
    :pswitch_4
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    # invokes: Lnet/hockeyapp/android/PaintActivity;->makeResult()V
    invoke-static {v0}, Lnet/hockeyapp/android/PaintActivity;->access$000(Lnet/hockeyapp/android/PaintActivity;)V

    goto :goto_3

    .line 144
    :pswitch_a
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/PaintActivity;->finish()V

    goto :goto_3

    .line 138
    :pswitch_data_10
    .packed-switch -0x2
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method
