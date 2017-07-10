.class Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;
.super Ljava/lang/Object;
.source "AntiReportfragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$3;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    .line 218
    const-string v0, "SpamBot"

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 221
    return-void
.end method
