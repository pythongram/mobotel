.class Lorg/telegram/ui/VoIPFeedbackActivity$1;
.super Ljava/lang/Object;
.source "VoIPFeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFeedbackActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFeedbackActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPFeedbackActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$1;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/VoIPFeedbackActivity$1;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFeedbackActivity;->finish()V

    .line 94
    return-void
.end method
