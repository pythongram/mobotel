.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$1;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 264
    return-void
.end method
