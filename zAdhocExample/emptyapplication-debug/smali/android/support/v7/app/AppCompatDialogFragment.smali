.class public Landroid/support/v7/app/AppCompatDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    new-instance v0, Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 47
    instance-of v0, p1, Landroid/support/v7/app/AppCompatDialog;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatDialog;

    .line 50
    .local v0, "acd":Landroid/support/v7/app/AppCompatDialog;
    packed-switch p2, :pswitch_data_0

    .line 50
    .end local v0    # "acd":Landroid/support/v7/app/AppCompatDialog;
    goto :goto_0

    .line 52
    .restart local v0    # "acd":Landroid/support/v7/app/AppCompatDialog;
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 58
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 60
    .end local v0    # "acd":Landroid/support/v7/app/AppCompatDialog;
    :goto_0
    goto :goto_1

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 64
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
