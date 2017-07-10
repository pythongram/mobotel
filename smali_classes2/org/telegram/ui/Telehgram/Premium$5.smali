.class Lorg/telegram/ui/Telehgram/Premium$5;
.super Ljava/lang/Object;
.source "Premium.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/Premium;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/Premium;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/Premium;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/Premium;

    .prologue
    .line 287
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Premium$5;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$5;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/Premium;->btn2:Landroid/widget/Button;

    const-string v1, "\u0634\u0645\u0627 \u0645\u0634\u062a\u0631\u06a9 \u0648\u06cc\u0698\u0647  \u0647\u0633\u062a\u06cc\u062f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method
