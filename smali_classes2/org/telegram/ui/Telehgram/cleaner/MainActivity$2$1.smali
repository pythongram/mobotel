.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    return-void
.end method
