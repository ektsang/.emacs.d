;;; vm-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

;;;### (autoloads nil "u-vm-color" "u-vm-color.el" (0 0 0 0))
;;; Generated autoloads from u-vm-color.el

(autoload 'u-vm-color-summary-mode "u-vm-color" "\
Configure `font-lock-keywords' and add some hooks for vm-buffers.
 (Optional argument ARG is not used.)

\(fn &optional ARG)" t nil)

(autoload 'u-vm-color-fontify-buffer "u-vm-color" "\
Fontifies mail-buffers.

\(fn)" t nil)

(autoload 'u-vm-color-fontify-buffer-even-more "u-vm-color" "\
Temporarily widen buffer and call `u-vm-color-fontify-buffer'.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "u-vm-color" '("u-vm-color-")))

;;;***

;;;### (autoloads nil "vcard" "vcard.el" (0 0 0 0))
;;; Generated autoloads from vcard.el

(defvar vcard-pretty-print-function 'vcard-format-sample-box "\
*Formatting function used by `vcard-pretty-print'.")

(custom-autoload 'vcard-pretty-print-function "vcard" t)

(defvar vcard-standard-filters '(vcard-filter-html vcard-filter-adr-newlines vcard-filter-tel-normalize vcard-filter-textprop-cr) "\
*Standard list of filters to apply to parsed vcard data.
These filters are applied sequentially to vcard attributes when
the function `vcard-standard-filter' is supplied as the second argument to
`vcard-parse'.")

(custom-autoload 'vcard-standard-filters "vcard" t)

(autoload 'vcard-pretty-print "vcard" "\
Format VCARD into a string suitable for display to user.
VCARD can be an unparsed string containing raw VCF vcard data
or a parsed vcard alist as returned by `vcard-parse-string'.

The result is a string with formatted vcard information suitable for
insertion into a mime presentation buffer.

The function specified by the variable `vcard-pretty-print-function'
actually performs the formatting.  That function will always receive a
parsed vcard alist.

\(fn VCARD)" nil nil)

(autoload 'vcard-parse-string "vcard" "\
Parse RAW vcard data as a string, and return an alist representing data.

If the optional function FILTER is specified, apply that filter to each
attribute.  If no filter is specified, `vcard-standard-filter' is used.

Filters should accept two arguments: the property list and the value list.
Modifying in place the property or value list will affect the resulting
attribute in the vcard alist.

Vcard data is normally in the form

    begin:                        vcard
    prop1a:                       value1a
    prop2a;prop2b;prop2c=param2c: value2a
    prop3a;prop3b:                value3a;value3b;value3c
    end:                          vcard

\(Whitespace around the `:' separating properties and values is optional.)
If supplied to this function an alist of the form

    (((\"prop1a\") \"value1a\")
     ((\"prop2a\" \"prop2b\" (\"prop2c\" . \"param2c\")) \"value2a\")
     ((\"prop3a\" \"prop3b\") \"value3a\" \"value3b\" \"value3c\"))

would be returned.

\(fn RAW &optional FILTER)" nil nil)

(autoload 'vcard-parse-region "vcard" "\
Parse the raw vcard data in region, and return an alist representing data.
This function is just like `vcard-parse-string' except that it operates on
a region of the current buffer rather than taking a string as an argument.

Note: this function modifies the buffer!

\(fn BEG END &optional FILTER)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vcard" '("vcard-")))

;;;***

;;;### (autoloads nil "vm" "vm.el" (0 0 0 0))
;;; Generated autoloads from vm.el

(autoload 'vm "vm" "\
Read mail under Emacs.
Optional first arg FOLDER specifies the folder to visit.  It can
be the path name of a local folder or the maildrop specification
of a POP or IMAP folder.  It defaults to the value of
`vm-primary-inbox'.  The folder is visited in a VM buffer is put
into VM mode, a major mode for reading mail.  (See `vm-mode'.)

Prefix arg or optional second arg READ-ONLY non-nil indicates
that the folder should be considered read only.  No attribute
changes, message additions or deletions will be allowed in the
visited folder.

Visiting a folder normally causes any contents of its spool files
to be moved and appended to the folder buffer.  You can disable
this automatic fetching of mail by setting `vm-auto-get-new-mail'
to nil.

All the messages can be read by repeatedly pressing SPC.  Use `n'ext and
`p'revious to move about in the folder.  Messages are marked for
deletion with `d', and saved to another folder with `s'.  Quitting VM
with `q' saves the buffered folder to disk, but does not expunge
deleted messages.  Use `###' to expunge deleted messages.

\(fn &optional FOLDER &key (read-only nil) (access-method nil) (reload nil) (revisit nil))" t nil)

(autoload 'vm-other-frame "vm" "\
Like vm, but run in a newly created frame.

\(fn &optional FOLDER READ-ONLY)" t nil)

(autoload 'vm-other-window "vm" "\
Like vm, but run in a different window.

\(fn &optional FOLDER READ-ONLY)" t nil)

(autoload 'vm-mode "vm" "\
Major mode for reading mail.

This is VM.

Use M-x vm-submit-bug-report to submit a bug report.

Commands:
\\{vm-mode-map}

Customize VM by setting variables and store them in the `vm-init-file'.

\(fn &optional READ-ONLY)" t nil)

(autoload 'vm-visit-folder "vm" "\
Visit a mail file.
VM will parse and present its messages to you in the usual way.

First arg FOLDER specifies the mail file to visit.  When this
command is called interactively the file name is read from the
minibuffer.

Prefix arg or optional second arg READ-ONLY non-nil indicates
that the folder should be considered read only.  No attribute
changes, messages additions or deletions will be allowed in the
visited folder.

The optional third arg REVISIT (not available interactively) says
that, if the folder is already visited, then it should be merely
selected without doing further processing (such as moving the
message-pointer or getting new mail).

\(fn FOLDER &optional READ-ONLY REVISIT)" t nil)

(autoload 'vm-visit-folder-other-frame "vm" "\
Like vm-visit-folder, but run in a newly created frame.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-folder-other-window "vm" "\
Like vm-visit-folder, but run in a different window.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-thunderbird-folder "vm" "\
Visit a mail file maintained by Thunderbird.
VM will parse and present its messages to you in the usual way.

First arg FOLDER specifies the mail file to visit.  When this
command is called interactively the file name is read from the
minibuffer.

Prefix arg or optional second arg READ-ONLY non-nil indicates
that the folder should be considered read only.  No attribute
changes, messages additions or deletions will be allowed in the
visited folder.

This function differs from `vm-visit-folder' in that it remembers that
the folder is a foreign folder maintained by Thunderbird.  Saving
of messages is carried out preferentially to other Thunderbird folders.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-pop-folder "vm" "\
Visit a POP mailbox.
VM will present its messages to you in the usual way.  Messages
found in the POP mailbox will be downloaded and stored in a local
cache.  If you expunge messages from the cache, the corresponding
messages will be expunged from the POP mailbox.

First arg FOLDER specifies the name of the POP mailbox to visit.
You can only visit mailboxes that are specified in `vm-pop-folder-alist'.
When this command is called interactively the mailbox name is read from the
minibuffer.

Prefix arg or optional second arg READ-ONLY non-nil indicates
that the folder should be considered read only.  No attribute
changes, messages additions or deletions will be allowed in the
visited folder.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-pop-folder-other-frame "vm" "\
Like vm-visit-pop-folder, but run in a newly created frame.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-pop-folder-other-window "vm" "\
Like vm-visit-pop-folder, but run in a different window.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-imap-folder "vm" "\
Visit a IMAP mailbox.
VM will present its messages to you in the usual way.  Messages
found in the IMAP mailbox will be downloaded and stored in a local
cache.  If you expunge messages from the cache, the corresponding
messages will be expunged from the IMAP mailbox when the folder is
saved. 

When this command is called interactively, the FOLDER name will
be read from the minibuffer in the format
\"account-name:folder-name\", where account-name is the short
name of an IMAP account listed in `vm-imap-account-alist' and
folder-name is a folder in this account.

Prefix arg or optional second arg READ-ONLY non-nil indicates
that the folder should be considered read only.  No attribute
changes, messages additions or deletions will be allowed in the
visited folder.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-imap-folder-other-frame "vm" "\
Like vm-visit-imap-folder, but run in a newly created frame.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-visit-imap-folder-other-window "vm" "\
Like vm-visit-imap-folder, but run in a different window.

\(fn FOLDER &optional READ-ONLY)" t nil)

(autoload 'vm-folder-buffers "vm" "\
Return the list of buffer names that are currently visiting VM
folders.  The optional argument NON-VIRTUAL says that only 
non-virtual folders should be returned.

\(fn &optional NON-VIRTUAL)" nil nil)

(autoload 'vm-switch-to-folder "vm" "\
Switch to another opened VM folder and rearrange windows as with a scroll.

\(fn FOLDER-NAME)" t nil)

(autoload 'vm-get-folder-buffer "vm" "\
Returns the buffer visiting FOLDER if it exists, nil otherwise.

\(fn FOLDER)" nil nil)

(autoload 'vm-visit-virtual-folder "vm" "\


\(fn FOLDER-NAME &optional READ-ONLY BOOKMARK)" t nil)

(autoload 'vm-visit-virtual-folder-other-frame "vm" "\
Like vm-visit-virtual-folder, but run in a newly created frame.

\(fn FOLDER-NAME &optional READ-ONLY)" t nil)

(autoload 'vm-visit-virtual-folder-other-window "vm" "\
Like vm-visit-virtual-folder, but run in a different window.

\(fn FOLDER-NAME &optional READ-ONLY)" t nil)

(autoload 'vm-mail "vm" "\
Send a mail message from within VM, or from without.
Optional argument TO is a string that should contain a comma separated
recipient list.

\(fn &optional TO SUBJECT)" t nil)

(autoload 'vm-mail-other-frame "vm" "\
Like vm-mail, but run in a newly created frame.
Optional argument TO is a string that should contain a comma separated
recipient list.

\(fn &optional TO)" t nil)

(autoload 'vm-mail-other-window "vm" "\
Like vm-mail, but run in a different window.
Optional argument TO is a string that should contain a comma separated
recipient list.

\(fn &optional TO)" t nil)

(autoload 'vm-folders-summarize "vm" "\
Generate a summary of the folders in your folder directories.
Set `vm-folders-summary-directories' to specify the folder directories.
Press RETURN or click mouse button 2 on an entry in the folders
summary buffer to select a folder.

\(fn &optional DISPLAY RAISE)" t nil)

(autoload 'vm-compose-mail "vm" "\


\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-FUNCTION YANK-ACTION SEND-ACTIONS RETURN-ACTION &rest IGNORED)" t nil)

(autoload 'vm-submit-bug-report "vm" "\
Submit a bug report, with pertinent information to the VM bug list.

\(fn &optional PRE-HOOKS POST-HOOKS)" t nil)

(autoload 'vm-update-draft-count "vm" "\
Check number of postponed messages in folder `vm-postponed-folder'.

\(fn)" nil nil)

(autoload 'vm-session-initialization "vm" "\
If this is the first time VM has been run in this Emacs session,
do some necessary preparations.  Otherwise, update the count of
draft messages.

\(fn)" nil nil)

(if (fboundp 'define-mail-user-agent) (define-mail-user-agent 'vm-user-agent #'vm-compose-mail #'vm-mail-send-and-exit nil nil))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm" '("vm-")))

;;;***

;;;### (autoloads nil "vm-avirtual" "vm-avirtual.el" (0 0 0 0))
;;; Generated autoloads from vm-avirtual.el

(autoload 'vm-avirtual-check-for-missing-selectors "vm-avirtual" "\
Check if there are selectors missing for either vm-mode or mail-mode.

\(fn &optional ARG)" t nil)

(autoload 'vm-add-spam-word "vm-avirtual" "\
Add a new word to the list of spam words.

\(fn WORD)" t nil)

(autoload 'vm-spam-words-rebuild "vm-avirtual" "\
Discharge the internal cached data about spam words.

\(fn)" t nil)

(autoload 'vm-virtual-get-selector "vm-avirtual" "\
Return the selector of virtual folder VFOLDER for VALID-FOLDER-LIST.

\(fn VFOLDER &optional VALID-FOLDER-LIST)" t nil)

(autoload 'vm-virtual-check-selector "vm-avirtual" "\
Return t if SELECTOR matches the message MSG.
If VIRTUAL is true we check the current message and not the real one.

\(fn SELECTOR &optional MSG VIRTUAL)" nil nil)

(autoload 'vm-virtual-check-selector-interactive "vm-avirtual" "\
Return t if SELECTOR matches the current message.
Called with an prefix argument we display more diagnostics about the selector
evaluation.  Information is displayed in the order of evaluation and indented
according to the level of recursion. The displayed information is has the
format: 
	FATHER-SELECTOR: RESULT CHILD-SELECTOR

\(fn SELECTOR &optional DIAGNOSTICS)" t nil)

(autoload 'vmpc-virtual-check-selector "vm-avirtual" "\
Checks SELECTOR based on the state of vmpc on the original or current.

\(fn SELECTOR &optional FOLDER-LIST)" nil nil)

(autoload 'vm-virtual-apply-function "vm-avirtual" "\
Apply a FUNCTION to the next COUNT messages matching SELECTOR.

\(fn COUNT &optional SELECTOR FUNCTION)" t nil)

(autoload 'vm-virtual-update-folders "vm-avirtual" "\
Updates all virtual folders.
E.g. when creating a folder of all marked messages one can call this
function in order to add newly marked messages to the virtual folder
without recreating it.

\(fn &optional COUNT MESSAGE-LIST)" t nil)

(autoload 'vm-virtual-omit-message "vm-avirtual" "\
Omits a meassage from a virtual folder.
IMHO allowing it for real folders makes no sense.  One rather should create a
virtual folder of all messages.

\(fn &optional COUNT MESSAGE-LIST)" t nil)

(autoload 'vm-virtual-auto-delete-message "vm-avirtual" "\
*Mark messages matching a virtual folder selector for deletion.
The virtual folder selector can be configured by the variable
`vm-virtual-auto-delete-message-selector'.

This function does not visit the virtual folder, but checks only the current
message, therefore it is much faster and not so disturbing like the method
described in the VM-FAQ.

In order to automatically mark spam for deletion use the function
`vm-virtual-auto-delete-messages'.  See its documentation on how to hook it
into VM!

\(fn &optional COUNT SELECTOR)" t nil)

(autoload 'vm-virtual-auto-delete-messages "vm-avirtual" "\
*Mark all messages from the current upto the last for (spam-)deletion.
Add this to `vm-arrived-messages-hook'.

See the function `vm-virtual-auto-delete-message' for details.

 (add-hook 'vm-arrived-messages-hook 'vm-virtual-auto-delete-messages)

\(fn)" t nil)

(defvar vm-virtual-auto-folder-alist nil "\
*Non-nil value should be an alist that VM will use to choose a default
folder name when messages are saved.  The alist should be of the form
        ((VIRTUAL-FOLDER-NAME . FOLDER-NAME)
          ...)
where VIRTUAL-FOLDER-NAME is a string, and FOLDER-NAME
is a string or an s-expression that evaluates to a string.

This allows you to extend `vm-virtual-auto-select-folder' to generate
a folder name.  Your function may use `folder' to get the currently choosen
folder name and `mp' (a vm-message-pointer) to access the message. 

Example:
 (setq vm-virtual-auto-folder-alist
       '((\"spam\" (concat folder \"-\"
                           (format-time-string \"%y%m\" (current-time))))))

This will return \"spam-0008\" as a folder name for messages matching the
virtual folder selector of the virtual folder \"spam\" during August in year
2000.")

(custom-autoload 'vm-virtual-auto-folder-alist "vm-avirtual" t)

(autoload 'vm-virtual-auto-select-folder "vm-avirtual" "\
Return the first matching virtual folder.
This is a more powerful replacement of `vm-auto-select-folder'.
It is used by `vm-virtual-save-message' for finding the folder to
save the current message.  It may also be used for finding the
right FCC for outgoing messages.

\(fn &optional M AVFOLDER-ALIST VALID-FOLDER-LIST NOT-TO-HISTORY)" nil nil)

(defvar vm-sort-compare-auto-folder-cache nil)

(autoload 'vm-sort-insert-auto-folder-names "vm-avirtual" "\


\(fn)" t nil)

(autoload 'vm-virtual-save-message "vm-avirtual" "\
Save the current message to a mail folder.
Like `vm-save-message' but the default folder is guessed by
`vm-virtual-auto-select-folder'.

\(fn &optional FOLDER COUNT)" t nil)

(autoload 'vm-virtual-auto-archive-messages "vm-avirtual" "\
With a prefix ARG ask user before saving.

\(fn &optional PROMPT)" t nil)

(autoload 'vm-virtual-make-folder-persistent "vm-avirtual" "\
Save all messages of current virtual folder in the real folder
with the same name.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-avirtual" '("vmpc-current-state" "vm-")))

;;;***

;;;### (autoloads nil "vm-biff" "vm-biff.el" (0 0 0 0))
;;; Generated autoloads from vm-biff.el

(autoload 'vm-biff-select-message "vm-biff" "\
Put focus on the folder frame and select the appropiate message.

\(fn)" t nil)

(autoload 'vm-biff-select-message-mouse "vm-biff" "\


\(fn EVENT)" t nil)

(autoload 'vm-biff-fvwm-focus-vm-folder-frame "vm-biff" "\
Jumps to the frame containing the folder for the selected message.

1) Your Emacs frame needs to have the folder name in its title, see the
   variable `frame-title-format' on how to set this up.

2) You need to define the FVWM2 function SelectWindow and start the
   FvwmCommandS module.  Therefore, you will need the following lines
   in your .fvwm2rc file. 

AddToFunc InitFunction
+ I Module FvwmCommandS

AddToFunc RestartFunction
+ I Module FvwmCommandS

AddToFunc SelectWindow
+ I Next ($0) Iconify false
+ I Next ($0) Raise
+ I Next ($0) WarpToWindow 10p 10p

\(fn)" t nil)

(autoload 'vm-biff-delete-popup "vm-biff" "\


\(fn &optional WF)" t nil)

(autoload 'vm-biff-popup "vm-biff" "\
Scan the current VM folder for new messages and popup a summary frame.

\(fn &optional FORCE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-biff" '("vm-")))

;;;***

;;;### (autoloads nil "vm-build" "vm-build.el" (0 0 0 0))
;;; Generated autoloads from vm-build.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-build" '("vm-")))

;;;***

;;;### (autoloads nil "vm-crypto" "vm-crypto.el" (0 0 0 0))
;;; Generated autoloads from vm-crypto.el

(autoload 'vm-md5-region "vm-crypto" "\


\(fn START END)" nil nil)

(autoload 'vm-md5-string "vm-crypto" "\


\(fn STRING)" nil nil)

(autoload 'vm-md5-raw-string "vm-crypto" "\


\(fn S)" nil nil)

(autoload 'vm-xor-string "vm-crypto" "\


\(fn S1 S2)" nil nil)

(autoload 'vm-setup-ssh-tunnel "vm-crypto" "\


\(fn HOST PORT)" nil nil)

(autoload 'vm-setup-stunnel-random-data-if-needed "vm-crypto" "\


\(fn)" nil nil)

(autoload 'vm-tear-down-stunnel-random-data "vm-crypto" "\


\(fn)" nil nil)

(autoload 'vm-stunnel-configuration-args "vm-crypto" "\


\(fn HOST PORT)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-crypto" '("vm-")))

;;;***

;;;### (autoloads nil "vm-delete" "vm-delete.el" (0 0 0 0))
;;; Generated autoloads from vm-delete.el

(autoload 'vm-delete-message "vm-delete" "\
Add the `deleted' attribute to the current message.

The message will be physically deleted from the current folder the next
time the current folder is expunged.

With a prefix argument COUNT, the current message and the next
COUNT - 1 messages are deleted.  A negative argument means
the current message and the previous |COUNT| - 1 messages are
deleted.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages are deleted, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are deleted.

\(fn COUNT &optional MLIST)" t nil)

(autoload 'vm-delete-message-backward "vm-delete" "\
Like vm-delete-message, except the deletion direction is reversed.

\(fn COUNT)" t nil)

(autoload 'vm-undelete-message "vm-delete" "\
Remove the `deleted' attribute from the current message.

With a prefix argument COUNT, the current message and the next
COUNT - 1 messages are undeleted.  A negative argument means
the current message and the previous |COUNT| - 1 messages are
deleted.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages are undeleted, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are undeleted.

\(fn COUNT)" t nil)

(autoload 'vm-toggle-flag-message "vm-delete" "\
Toggle the `flagged' attribute to the current message, i.e., if it 
has not been flagged then it will be flagged and, if it is already
flagged, then it will be unflagged.

With a prefix argument COUNT, the current message and the next
COUNT - 1 messages are flagged/unflagged.  A negative argument means
the current message and the previous |COUNT| - 1 messages are
flagged/unflagged.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages are flagged/unflagged, other messages are
ignored.  If applied to collapsed threads in summary and thread
operations are enabled via `vm-enable-thread-operations' then all
messages in the thread are flagged/unflagged.

\(fn COUNT &optional MLIST)" t nil)

(autoload 'vm-kill-subject "vm-delete" "\
Delete all messages with the same subject as the current message.
Message subjects are compared after ignoring parts matched by
the variables vm-subject-ignored-prefix and vm-subject-ignored-suffix.

The optional prefix argument ARG specifies the direction to move
if vm-move-after-killing is non-nil.  The default direction is
forward.  A positive prefix argument means move forward, a
negative arugment means move backward, a zero argument means
don't move at all.

\(fn &optional ARG)" t nil)

(autoload 'vm-kill-thread-subtree "vm-delete" "\
Delete all messages in the thread tree rooted at the current message.

The optional prefix argument ARG specifies the direction to move
if vm-move-after-killing is non-nil.  The default direction is
forward.  A positive prefix argument means move forward, a
negative arugment means move backward, a zero argument means
don't move at all.

\(fn &optional ARG)" t nil)

(autoload 'vm-delete-duplicate-messages "vm-delete" "\
Delete duplicate messages in the current folder.
This command works by comparing the message ID's.  Messages that
already deleted are not considered, so VM will never delete the last
copy of a message in a folder.  'Deleting' means flagging for
deletion; you will have to expunge the messages with
`vm-expunge-folder' to really get rid of them, as usual.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only duplicate messages among the marked messages are deleted;
unmarked messages are not considerd for deletion.

\(fn)" t nil)

(autoload 'vm-delete-duplicate-messages-by-body "vm-delete" "\
Delete duplicate messages in the current folder.
This command works by computing an MD5 hash for the body of each
non-deleted message in the folder and deleting messages that have
a hash that has already been seen.  Messages that are already deleted
are never hashed, so VM will never delete the last copy of a
message in a folder.  'Deleting' means flagging for deletion; you
will have to expunge the messages with `vm-expunge-folder' to
really get rid of them, as usual.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only duplicate messages among the marked messages are deleted,
unmarked messages are not hashed or considerd for deletion.

\(fn)" t nil)

(autoload 'vm-expunge-folder "vm-delete" "\
Expunge messages with the `deleted' attribute.
For normal folders this means that the deleted messages are
removed from the message list and the message contents are
removed from the folder buffer.

For virtual folders, messages are removed from the virtual
message list.  If virtual mirroring is in effect for the virtual
folder, the corresponding real messages are also removed from real
message lists and the message contents are removed from real folders.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only messages both marked and deleted are expunged, other messages are
ignored.

\(fn &key (quiet nil) ((:just-these-messages message-list) nil just-these-messages))" t nil)

;;;***

;;;### (autoloads nil "vm-digest" "vm-digest.el" (0 0 0 0))
;;; Generated autoloads from vm-digest.el

(autoload 'vm-no-frills-encapsulate-message "vm-digest" "\
Encapsulate a message M for forwarding, simply.
No message encapsulation standard is used.  The message is
inserted at point in the current buffer, surrounded by two dashed
start/end separator lines.  Point is not moved.

M should be a message struct for a real message, not a virtual message.
This is the message that will be encapsulated.
KEEP-LIST should be a list of regexps matching headers to keep.
DISCARD-REGEXP should be a regexp that matches headers to be discarded.
KEEP-LIST and DISCARD-REGEXP are used to order and trim the headers
to be forwarded.  See the docs for vm-reorder-message-headers
to find out how KEEP-LIST and DISCARD-REGEXP are used.

\(fn M KEEP-LIST DISCARD-REGEXP)" nil nil)

(autoload 'vm-mime-encapsulate-messages "vm-digest" "\
Encapsulate the messages in MESSAGE-LIST as per the MIME spec.
The resulting digest is inserted at point in the current buffer.
Point is not moved.

MESSAGE-LIST should be a list of message structs (real or virtual).
These are the messages that will be encapsulated.
KEEP-LIST should be a list of regexps matching headers to keep.
DISCARD-REGEXP should be a regexp that matches headers to be discarded.
KEEP-LIST and DISCARD-REGEXP are used to order and trim the headers
to be forwarded.  See the docs for vm-reorder-message-headers
to find out how KEEP-LIST and DISCARD-REGEXP are used.

If ALWAYS-USE-DIGEST is non-nil, always encapsulate for a multipart/digest.
Otherwise if there is only one message to be encapsulated
leave off the multipart boundary strings.  The caller is assumed to
be using message/rfc822 or message/news encoding instead.

If multipart/digest encapsulation is done, the function returns
the multipart boundary parameter (string) that should be used in
the Content-Type header.  Otherwise nil is returned.

\(fn MESSAGE-LIST &key (keep-list nil) (discard-regexp \"none\") (always-use-digest nil))" nil nil)

(autoload 'vm-mime-burst-layout "vm-digest" "\


\(fn LAYOUT IDENT-HEADER)" nil nil)

(autoload 'vm-rfc934-encapsulate-messages "vm-digest" "\
Encapsulate the messages in MESSAGE-LIST as per RFC 934.
The resulting digest is inserted at point in the current buffer.
Point is not moved.

MESSAGE-LIST should be a list of message structs (real or virtual).
These are the messages that will be encapsulated.
KEEP-LIST should be a list of regexps matching headers to keep.
DISCARD-REGEXP should be a regexp that matches headers to be discarded.
KEEP-LIST and DISCARD-REGEXP are used to order and trim the headers
to be forwarded.  See the docs for vm-reorder-message-headers
to find out how KEEP-LIST and DISCARD-REGEXP are used.

\(fn MESSAGE-LIST KEEP-LIST DISCARD-REGEXP)" nil nil)

(autoload 'vm-rfc1153-encapsulate-messages "vm-digest" "\
Encapsulate the messages in MESSAGE-LIST as per RFC 1153.
The resulting digest is inserted at point in the current buffer.
Point is not moved.

MESSAGE-LIST should be a list of message structs (real or virtual).
These are the messages that will be encapsulated.
KEEP-LIST should be a list of regexps matching headers to keep.
DISCARD-REGEXP should be a regexp that matches headers to be discarded.
KEEP-LIST and DISCARD-REGEXP are used to order and trim the headers
to be forwarded.  See the docs for vm-reorder-message-headers
to find out how KEEP-LIST and DISCARD-REGEXP are used.

\(fn MESSAGE-LIST KEEP-LIST DISCARD-REGEXP)" nil nil)

(autoload 'vm-burst-digest "vm-digest" "\
Burst the current message (a digest) into its individual messages.
The digest's messages are assimilated into the folder as new mail
would be.

Optional argument DIGEST-TYPE is a string that tells VM what kind
of digest the current message is.  If it is not given the value
defaults to the value of vm-digest-burst-type.  When called
interactively DIGEST-TYPE will be read from the minibuffer.

If invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages will be burst.  If applied to collapsed
threads in summary and thread operations are enabled via
`vm-enable-thread-operations' then all messages in the thread are
burst.

\(fn &optional DIGEST-TYPE)" t nil)

(autoload 'vm-burst-rfc934-digest "vm-digest" "\
Burst an RFC 934 style digest

\(fn)" t nil)

(autoload 'vm-burst-rfc1153-digest "vm-digest" "\
Burst an RFC 1153 style digest

\(fn)" t nil)

(autoload 'vm-burst-mime-digest "vm-digest" "\
Burst a MIME digest

\(fn)" t nil)

(autoload 'vm-burst-digest-to-temp-folder "vm-digest" "\
Burst the current message (a digest) into a temporary folder.
The digest's messages are copied to a buffer and vm-mode is
invoked on the buffer.  There is no file associated with this
buffer.  You can use `vm-write-file' to save the buffer, or
`vm-save-message' to save individual messages to a real folder.

Optional argument DIGEST-TYPE is a string that tells VM what kind
of digest the current message is.  If it is not given the value
defaults to the value of vm-digest-burst-type.  When called
interactively DIGEST-TYPE will be read from the minibuffer.

If invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages will be burst.  If applied to collapsed
threads in summary and thread operations are enabled via
`vm-enable-thread-operations' then all messages in the thread are
burst.

\(fn &optional DIGEST-TYPE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-digest" '("vm-")))

;;;***

;;;### (autoloads nil "vm-dired" "vm-dired.el" (0 0 0 0))
;;; Generated autoloads from vm-dired.el

(autoload 'vm-dired-attach-file "vm-dired" "\
Attach the file at point in the dired buffer to a VM composition
buffer as a mime attachment. 

The file is not inserted into the buffer and MIME encoded until
you execute `vm-mail-send' or `vm-mail-send-and-exit'.  A visible tag
indicating the existence of the object is placed in the
composition buffer.  You can move the object around or remove
it entirely with normal text editing commands.  If you remove the
object tag, the object will not be sent.

First argument COMPOSITION is the buffer into which the object
will be inserted.  When this function is called interactively
COMPOSITION's name will be read from the minibuffer.

\(fn COMPOSITION)" t nil)

(autoload 'vm-dired-do-attach-files "vm-dired" "\
Attach all marked files in the dired buffer to a VM composition
buffer as mime attachments. 

The files are not inserted into the buffer and MIME encoded until
you execute `vm-mail-send' or `vm-mail-send-and-exit'.  For each
file, a visible tag indicating the existence of the object is
placed in the composition buffer.  You can move the objects around
or remove them entirely with normal text editing commands.  If you
remove an object tag, the object will not be sent.

First argument COMPOSITION is the buffer into which the objects
will be inserted.  When this function is called interactively
COMPOSITION's name will be read from the minibuffer.

\(fn COMPOSITION)" t nil)

;;;***

;;;### (autoloads nil "vm-edit" "vm-edit.el" (0 0 0 0))
;;; Generated autoloads from vm-edit.el

(autoload 'vm-edit-message "vm-edit" "\
Edit the current message.  Prefix arg means mark as unedited instead.
If editing, the current message is copied into a temporary buffer, and
this buffer is selected for editing.  The major mode of this buffer is
controlled by the variable vm-edit-message-mode.  The hooks specified
in vm-edit-message-hook are run just prior to returning control to the user
for editing.

Use C-c ESC when you have finished editing the message.  The message
will be inserted into its folder replacing the old version of the
message.  If you don't want your edited version of the message to
replace the original, use C-c C-] and the edit will be aborted.

\(fn &optional PREFIX-ARGUMENT)" t nil)

(autoload 'vm-edit-message-other-frame "vm-edit" "\
Like vm-edit-message, but run in a newly created frame.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-discard-cached-data "vm-edit" "\
Discard cached information about the current message.
When VM gathers information from the headers of a message, it stores it
internally for future reference.  This command causes VM to forget this
information, and VM will be forced to search the headers of the message
again for these data.  VM will also have to decide again which headers
should be displayed and which should not.  Therefore this command is
useful if you change the value of vm-visible-headers or
vm-invisible-header-regexp in the midst of a VM session.

Numeric prefix argument N means to discard data from the current message
plus the next N-1 messages.  A negative N means discard data from the
current message and the previous N-1 messages.

When invoked on marked messages (via `vm-next-command-uses-marks'),
data is discarded only from the marked messages in the current folder.
If applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread have their cached data discarded.

\(fn &optional COUNT)" t nil)

(autoload 'vm-edit-message-end "vm-edit" "\
End the edit of a message and copy the result to its folder.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-edit" '("vm-")))

;;;***

;;;### (autoloads nil "vm-folder" "vm-folder.el" (0 0 0 0))
;;; Generated autoloads from vm-folder.el

(autoload 'vm-reorder-message-headers "vm-folder" "\


\(fn MESSAGE &optional &key (keep-list nil) (discard-regexp nil))" t nil)

(autoload 'vm-mark-message-unread "vm-folder" "\
Mark the current message as unread.  If the message is already
new or unread, then it is left unchanged.

Numeric prefix argument N means to mark the current message plus
the next N-1 messages as unread.  A negative N means mark the
current message and the previous N-1 messages as unread.

When invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages are affected, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are affected.

\(fn &optional COUNT)" t nil)

(autoload 'vm-mark-message-read "vm-folder" "\
Mark the current message as read, i.e., set the `unread' and `new'
attributes to nil.  If the message is already marked as read, then
it is left unchanged.

Numeric prefix argument N means to unread the current message plus the
next N-1 messages.  A negative N means mark the current message and
the previous N-1 messages as read.

When invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages are affected, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are affected.

\(fn &optional COUNT)" t nil)

(autoload 'vm-quit-just-bury "vm-folder" "\
Bury the current VM folder and summary buffers.
The folder is not altered and Emacs is still visiting it.  You
can switch back to it with switch-to-buffer or by using the
Buffer Menu.

\(fn)" t nil)

(autoload 'vm-quit-just-iconify "vm-folder" "\
Iconify the frame and bury the current VM folder and summary buffers.
The folder is not altered and Emacs is still visiting it.

\(fn)" t nil)

(autoload 'vm-quit-no-change "vm-folder" "\
Quit visiting the current folder without saving changes made to the folder.

\(fn)" t nil)

(autoload 'vm-quit-no-expunge "vm-folder" "\
Quit visiting the current folder without expunging deleted
messages.  

The setting of `vm-expunge-before-quit' is ignored.

\(fn)" t nil)

(autoload 'vm-quit "vm-folder" "\
Quit visiting the current folder, saving changes.  

If the customization variable `vm-expunge-before-quit' is set to
  non-nil value then deleted messages are expunged.

Giving a prefix argument overrides the variable and no expunge is done.

\(fn &optional NO-EXPUNGE NO-CHANGE)" t nil)

(autoload 'vm-save-buffer "vm-folder" "\


\(fn PREFIX)" t nil)

(autoload 'vm-write-file "vm-folder" "\


\(fn)" t nil)

(autoload 'vm-save-folder-no-expunge "vm-folder" "\
Save current folder to disk.
Prefix arg is handled the same as for the command `save-buffer'.  

Deleted messages are _not_ expunged irrespective of the variable
`vm-expunge-before-save'.

When applied to a virtual folder, this command runs itself on
each of the underlying real folders associated with the virtual
folder.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-save-folder "vm-folder" "\
Save current folder to disk.
Prefix arg is handled the same as for the command `save-buffer'.

If the customization variable `vm-expunge-before-save' is set to
non-nil value then deleted messages are expunged.

When applied to a virtual folder, this command runs itself on
each of the underlying real folders associated with the virtual
folder.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-save-and-expunge-folder "vm-folder" "\
Expunge folder, then save it to disk.
Prefix arg is handled the same as for the command save-buffer.
Expunge won't be done if folder is read-only.

When applied to a virtual folder, this command works as if you had
run vm-expunge-folder followed by vm-save-folder.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-read-folder "vm-folder" "\
Reads the FOLDER from the file system and creates a buffer.
Returns the buffer created.
Optional argument REMOTE-SPEC gives the maildrop specification for
the server folder that the FOLDER might be caching.
Optional argument FOLDER-NAME gives the name of the folder that should
be used as the name of the buffer.

\(fn FOLDER &optional REMOTE-SPEC FOLDER-NAME)" nil nil)

(autoload 'vm-revert-buffer "vm-folder" "\
Revert the current folder to its version on the disk.
Same as \\[vm-revert-folder].

\(fn)" t nil)

(autoload 'vm-recover-file "vm-folder" "\
Recover the autosave file for the current folder. 
Same as \\[vm-recover-folder].

\(fn)" t nil)

(autoload 'vm-help "vm-folder" "\
Display help for various VM activities.

\(fn)" t nil)

(autoload 'vm-spool-move-mail "vm-folder" "\


\(fn SOURCE DESTINATION)" nil nil)

(autoload 'vm-folder-name "vm-folder" "\
Return the current folder's name (local file name, or POP/IMAP
maildrop string).

\(fn)" t nil)

(autoload 'vm-get-new-mail "vm-folder" "\
Move any new mail that has arrived in any of the spool files for the
current folder into the folder.  New mail is appended to the disk
and buffer copies of the folder.

Prefix arg means to gather mail from a user specified folder, instead of
the usual spool files.  The file name will be read from the minibuffer.
Unlike when getting mail from a spool file, the source file is left
undisturbed after its messages have been copied.

When applied to a virtual folder, this command runs itself on
each of the underlying real folders associated with this virtual
folder.  A prefix argument has no effect when this command is
applied to virtual folder; mail is always gathered from the spool
files.

\(fn &optional ARG)" t nil)

(autoload 'vm-toggle-read-only "vm-folder" "\


\(fn)" t nil)

(autoload 'vm-change-folder-type "vm-folder" "\
Change folder type to TYPE.
TYPE may be one of the following symbol values:

    From_
    From_-with-Content-Length
    BellFrom_
    mmdf
    babyl

Interactively TYPE will be read from the minibuffer.

\(fn TYPE)" t nil)

(autoload 'vm-load-message "vm-folder" "\
Load the message by retrieving its body from its
permanent location.  Currently this facility is only available for IMAP
folders.

With a prefix argument COUNT, the current message and the next 
COUNT - 1 messages are loaded.  A negative argument means
the current message and the previous |COUNT| - 1 messages are
loaded.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages are loaded, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are loaded.

\(fn &optional COUNT)" t nil)

(autoload 'vm-retrieve-operable-messages "vm-folder" "\
Retrieve the message from from its permanent location for
temporary use.  Currently this facility is only available for
IMAP folders.

If the optional argument MLIST is non-nil, then the messages in
MLIST are retrieved.  Otherwise, the following applies.

With a prefix argument COUNT, the current message and the next 
COUNT - 1 messages are retrieved.  A negative argument means
the current message and the previous |COUNT| - 1 messages are
retrieved.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages are retrieved, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are retrieved.

\(fn &optional COUNT MLIST)" nil nil)

(autoload 'vm-refresh-message "vm-folder" "\
Reload the message body from its permanent location.  Currently
this facilty is only available for IMAP folders.

\(fn)" t nil)

(autoload 'vm-unload-message "vm-folder" "\
Unload the message body, i.e., delete it from the folder
buffer.  It can be retrieved again in future from its permanent
external location.  Currently this facility is only available for
IMAP folders.

With a prefix argument COUNT, the current message and the next 
COUNT - 1 messages are unloaded.  A negative argument means
the current message and the previous |COUNT| - 1 messages are
unloaded.

When invoked on marked messages (via `vm-next-command-uses-marks'), only 
marked messages are unloaded, other messages are ignored.  If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in
the thread are unloaded.

If the optional argument PHYSICAL is non-nil, then the message is
physically discarded.  Otherwise, the discarding may be delayed until
the folder is saved.

\(fn &optional COUNT PHYSICAL)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-folder" '("vm-")))

;;;***

;;;### (autoloads nil "vm-grepmail" "vm-grepmail.el" (0 0 0 0))
;;; Generated autoloads from vm-grepmail.el

(defvar vm-grepmail-command "grepmail" "\
*Path to the program.")

(custom-autoload 'vm-grepmail-command "vm-grepmail" t)

(defvar vm-grepmail-arguments (list "-q" "-m" "-R" "-e" (format "%S" user-full-name)) "\
*Arguments for grepmail program.")

(custom-autoload 'vm-grepmail-arguments "vm-grepmail" t)

(autoload 'vm-grepmail "vm-grepmail" "\
A not so excellent interface to grepmail.
Grepmail is a fast perl-script for finding mails which got lost in the
folder jungle.  End your input or folders and directories with an empty sting
or the default folder.

ARGUMENTS the command line aruments to grepmail.
FOLDERS should be a list of files/directories to search in.

\(fn ARGUMENTS FOLDERS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-grepmail" '("vm-grepmail-")))

;;;***

;;;### (autoloads nil "vm-imap" "vm-imap.el" (0 0 0 0))
;;; Generated autoloads from vm-imap.el

(autoload 'vm-imap-move-mail "vm-imap" "\
move-mail function for IMAP folders.  SOURCE is the IMAP mail box
from which mail is to be moved and DESTINATION is the VM folder.

\(fn SOURCE DESTINATION)" nil nil)

(autoload 'vm-imap-make-session "vm-imap" "\
Create a new IMAP session for the IMAP mail box SOURCE.
Optional argument INTERACTIVE says the operation has been invoked
interactively, and the optional argument PURPOSE is inserted in
the process buffer for tracing purposes.  Returns the process or
nil if the session could not be created.

\(fn SOURCE &optional INTERACTIVE PURPOSE)" nil nil)

(autoload 'vm-imap-end-session "vm-imap" "\
Kill the IMAP session represented by PROCESS.  PROCESS could
be nil or be already closed. Optional argument IMAP-BUFFER specifies
the process-buffer. If the optional argument KEEP-BUFFER is
non-nil, the process buffer is retained, otherwise it is killed
as well.

\(fn PROCESS &optional IMAP-BUFFER KEEP-BUFFER)" nil nil)

(autoload 'vm-imap-save-message "vm-imap" "\
Using the IMAP process PROCESS, save the message M to IMAP mailbox
MAILBOX.

\(fn PROCESS M MAILBOX)" nil nil)

(autoload 'vm-imap-synchronize-folder "vm-imap" "\
Synchronize IMAP folder with the server.
   INTERACTIVE, true if the function was invoked interactively, e.g., as
   vm-get-spooled-mail.
   DO-REMOTE-EXPUNGES indicates whether the server mail box should be
   expunged.  If it is 'all, then all messages not present in the cache folder
   are expunged.
   DO-LOCAL-EXPUNGES indicates whether the cache buffer should be
   expunged.
   DO-RETRIEVES indicates if new messages that are not already in the
   cache should be retrieved from the server.  If this flag is 'full
   then messages previously retrieved but not in cache are retrieved
   as well.
   SAVE-ATTRIBUTES indicates if the message attributes should be updated on
   the server.  If it is 'all, then the attributes of all messages are
   updated irrespective of whether they were modified or not.
   RETRIEVE-ATTRIBTUES indicates if the message attributes on the server
   should be retrieved, updating the cache.

\(fn &key (interactive nil) (do-remote-expunges nil) (do-local-expunges nil) (do-retrieves nil) (save-attributes nil) (retrieve-attributes nil))" nil nil)

(autoload 'vm-imap-folder-check-mail "vm-imap" "\
Check if there is new mail on the server for the current IMAP
folder.  The optional argument INTERACTIVE says if the function
is being invoked interactively.

\(fn &optional INTERACTIVE)" nil nil)

(autoload 'vm-imap-find-name-for-spec "vm-imap" "\
This is a stub for a function that has not been defined.

\(fn SPEC)" nil nil)

(autoload 'vm-imap-find-spec-for-buffer "vm-imap" "\
Find the IMAP maildrop spec for the folder BUFFER.

\(fn BUFFER)" nil nil)

(autoload 'vm-imap-make-filename-for-spec "vm-imap" "\
Returns a cache file name appropriate for the IMAP maildrop
specification SPEC.

\(fn SPEC)" nil nil)

(autoload 'vm-imap-normalize-spec "vm-imap" "\


\(fn SPEC)" nil nil)

(autoload 'vm-imap-account-name-for-spec "vm-imap" "\
Returns the IMAP account name for maildrop specification SPEC, by
looking up `vm-imap-account-alist' or nil if there is no such account.

\(fn SPEC)" nil nil)

(autoload 'vm-imap-folder-for-spec "vm-imap" "\
Returns the IMAP folder for maildrop specification SPEC in the
format account:mailbox.

\(fn SPEC)" nil nil)

(autoload 'vm-imap-spec-for-account "vm-imap" "\
Returns the IMAP maildrop spec for ACCOUNT, by looking up
`vm-imap-account-alist' or nil if there is no such account.

\(fn ACCOUNT)" nil nil)

(autoload 'vm-imap-parse-spec-to-list "vm-imap" "\
Parses the IMAP maildrop specification SPEC and returns a list of
its components.

\(fn SPEC)" nil nil)

(autoload 'vm-read-imap-folder-name "vm-imap" "\
Read an IMAP folder name in the format account:mailbox, return an
IMAP mailbox spec.

\(fn PROMPT &optional SELECTABLE-ONLY NEWONE DEFAULT)" nil nil)

(autoload 'vm-create-imap-folder "vm-imap" "\
Create a folder on an IMAP server.
First argument FOLDER is read from the minibuffer if called
interactively.  Non-interactive callers must provide an IMAP
maildrop specification for the folder as described in the
documentation for `vm-spool-files'.

\(fn FOLDER)" t nil)

(autoload 'vm-delete-imap-folder "vm-imap" "\
Delete a folder on an IMAP server.
First argument FOLDER is read from the minibuffer if called
interactively.  Non-interactive callers must provide an IMAP
maildrop specification for the folder as described in the
documentation for `vm-spool-files'.

\(fn FOLDER)" t nil)

(autoload 'vm-rename-imap-folder "vm-imap" "\
Rename a folder on an IMAP server.
Argument SOURCE and DEST are read from the minibuffer if called
interactively.  Non-interactive callers must provide full IMAP
maildrop specifications for SOURCE and DEST as described in the
documentation for `vm-spool-files'.

\(fn SOURCE DEST)" t nil)

(autoload 'vm-list-imap-folders "vm-imap" "\
List all folders on an IMAP account ACCOUNT, along with the
counts of messages in them.  The account must be one declared in
`vm-imap-account-alist'.

With a prefix argument, it lists only the folders with new messages in
them.

\(fn ACCOUNT &optional FILTER-NEW)" t nil)

(autoload 'vm-imap-save-composition "vm-imap" "\
Saves the current composition in the IMAP folder given by the
IMAP-FCC header. 
Add this to your `mail-send-hook' and start composing from an IMAP
folder.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-imap" '("vm-" "delete-common-elements")))

;;;***

;;;### (autoloads nil "vm-license" "vm-license.el" (0 0 0 0))
;;; Generated autoloads from vm-license.el

(autoload 'vm-show-copying-restrictions "vm-license" "\
Show VM's license, i.e. the GPL.

\(fn &optional WARRANTY)" t nil)

(autoload 'vm-show-no-warranty "vm-license" "\
Display \"NO WARRANTY\" section of the GNU General Public License.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "vm-macro" "vm-macro.el" (0 0 0 0))
;;; Generated autoloads from vm-macro.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-macro" '("vm-")))

;;;***

;;;### (autoloads nil "vm-mark" "vm-mark.el" (0 0 0 0))
;;; Generated autoloads from vm-mark.el

(autoload 'vm-clear-all-marks "vm-mark" "\
Removes all message marks in the current folder.

\(fn)" t nil)

(autoload 'vm-toggle-all-marks "vm-mark" "\
Toggles all message marks in the current folder.
Messages that are unmarked will become marked and messages that are
marked will become unmarked.

\(fn)" t nil)

(autoload 'vm-mark-all-messages "vm-mark" "\
Mark all messages in the current folder.

\(fn)" t nil)

(autoload 'vm-mark-message "vm-mark" "\
Mark the current message.
Numeric prefix argument N means mark the current message and the next
N-1 messages.  A negative N means mark the current message and the
previous N-1 messages.

\(fn COUNT)" t nil)

(autoload 'vm-unmark-message "vm-mark" "\
Remove the mark from the current message.
Numeric prefix argument N means unmark the current message and the next
N-1 messages.  A negative N means unmark the current message and the
previous N-1 messages.

\(fn COUNT)" t nil)

(autoload 'vm-mark-summary-region "vm-mark" "\
Mark all messages with summary lines contained in the region.

\(fn)" t nil)

(autoload 'vm-unmark-summary-region "vm-mark" "\
Remove marks from messages with summary lines contained in the region.

\(fn)" t nil)

(autoload 'vm-mark-matching-messages "vm-mark" "\
Mark messages matching some criterion.
You can use any of the virtual folder selectors, except for the
`and', `or' and `not' selectors.  See the documentation for the
variable vm-virtual-folder-alist for more information.

\(fn SELECTOR &optional ARG)" t nil)

(autoload 'vm-unmark-matching-messages "vm-mark" "\
Unmark messages matching some criterion.
You can use any of the virtual folder selectors, except for the
`and', `or' and `not' selectors.  See the documentation for the
variable vm-virtual-folder-alist for more information.

\(fn SELECTOR &optional ARG)" t nil)

(autoload 'vm-mark-thread-subtree "vm-mark" "\
Mark all messages in the thread tree rooted at the current message.

\(fn)" t nil)

(autoload 'vm-unmark-thread-subtree "vm-mark" "\
Unmark all messages in the thread tree rooted at the current message.

\(fn)" t nil)

(autoload 'vm-mark-messages-same-subject "vm-mark" "\
Mark all messages with the same subject as the current message.

\(fn)" t nil)

(autoload 'vm-unmark-messages-same-subject "vm-mark" "\
Unmark all messages with the same subject as the current message.

\(fn)" t nil)

(autoload 'vm-mark-messages-same-author "vm-mark" "\
Mark all messages with the same author as the current message.

\(fn)" t nil)

(autoload 'vm-unmark-messages-same-author "vm-mark" "\
Unmark all messages with the same author as the current message.

\(fn)" t nil)

(autoload 'vm-mark-matching-messages-with-virtual-folder "vm-mark" "\
Mark messages that are matched by the selectors of virtual folder NAME.

\(fn NAME)" t nil)

(autoload 'vm-unmark-matching-messages-with-virtual-folder "vm-mark" "\
Unmark messages that are matched by the selectors of virtual folder NAME.

\(fn NAME)" t nil)

(autoload 'vm-next-command-uses-marks "vm-mark" "\
Does nothing except insure that the next VM command will operate only
on the marked messages in the current folder.  This only works for
commands bound to key, menu or button press events.  M-x vm-command will
not work.

\(fn)" t nil)

(autoload 'vm-marked-messages "vm-mark" "\


\(fn)" nil nil)

(autoload 'vm-mark-help "vm-mark" "\


\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-mark" '("vm-mark-or-unmark-")))

;;;***

;;;### (autoloads nil "vm-menu" "vm-menu.el" (0 0 0 0))
;;; Generated autoloads from vm-menu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-menu" '("vm-")))

;;;***

;;;### (autoloads nil "vm-message" "vm-message.el" (0 0 0 0))
;;; Generated autoloads from vm-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-message" '("vm-")))

;;;***

;;;### (autoloads nil "vm-message-history" "vm-message-history.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from vm-message-history.el

(autoload 'vm-message-history-add "vm-message-history" "\
Add the selected message to `vm-message-history'.
\(Unless the message was selected via \\[vm-message-history-backward] or
\\[vm-message-history-forward].)

\(fn)" nil nil)

(autoload 'vm-message-history-backward "vm-message-history" "\
Select the previous message in the current folder's history.
With prefix ARG, select the ARG'th previous message.

\(fn &optional ARG)" t nil)

(autoload 'vm-message-history-forward "vm-message-history" "\
Select the next message in the current folder's history.
With prefix ARG, select the ARG'th next message.

\(fn &optional ARG)" t nil)

(autoload 'vm-message-history-browse "vm-message-history" "\
Select a message from a popup menu of the current folder's history.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-message-history" '("vm-message-history")))

;;;***

;;;### (autoloads nil "vm-mime" "vm-mime.el" (0 0 0 0))
;;; Generated autoloads from vm-mime.el

(autoload 'vm-decode-mime-message "vm-mime" "\
Decode the MIME objects in the current message.

The first time this command is run on a message, decoding is done.
The second time, buttons for all the objects are displayed instead.
The third time, the raw, undecoded data is displayed.

The optional argument STATE can specify which decode state to display:
'decoded, 'button or 'undecoded.

If decoding, the decoded objects might be displayed immediately, or
buttons might be displayed that you need to activate to view the
object.  See the documentation for the variables

    vm-mime-auto-displayed-content-types
    vm-mime-auto-displayed-content-type-exceptions
    vm-mime-internal-content-types
    vm-mime-internal-content-type-exceptions
    vm-mime-external-content-types-alist

to see how to control whether you see buttons or objects.

If the variable vm-mime-display-function is set, then its value
is called as a function with no arguments, and none of the
actions mentioned in the preceding paragraphs are taken.  At the
time of the call, the current buffer will be the presentation
buffer for the folder and a copy of the current message will be
in the buffer.  The function is expected to make the message
`MIME presentable' to the user in whatever manner it sees fit.

\(fn &optional STATE)" t nil)

(autoload 'vm-mime-run-display-function-at-point "vm-mime" "\
Run the 'vm-mime-function for the MIME button at point.
If optional argument FUNCTION is given, run it instead.
					          USR, 2011-03-07

\(fn &optional FUNCTION)" t nil)

(autoload 'vm-mime-reader-map-save-file "vm-mime" "\
Write the MIME object at point to a file.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-save-message "vm-mime" "\
Save the MIME object at point to a folder.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-pipe-to-command "vm-mime" "\
Pipe the MIME object at point to a shell command.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-pipe-to-command-discard-output "vm-mime" "\
Pipe the MIME object at point to a shell command.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-pipe-to-printer "vm-mime" "\
Print the MIME object at point.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-display-using-external-viewer "vm-mime" "\
Display the MIME object at point with an external viewer.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-display-using-default "vm-mime" "\
Display the MIME object at point using the `default' face.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-display-object-as-type "vm-mime" "\
Display the MIME object at point as some other type.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-convert-then-display "vm-mime" "\
Convert the MIME object at point to text and display it.

\(fn)" t nil)

(autoload 'vm-mime-reader-map-attach-to-composition "vm-mime" "\
Attach the MIME object at point to a message being composed.  The
buffer for message composition is queried from the minibufer.

\(fn)" t nil)

(autoload 'vm-mime-operate-on-attachments "vm-mime" "\
On the next COUNT messages or marked messages, call the
function ACTION on all \"attachments\".  

For the purpose of this function, an \"attachment\" is a mime
part part which has \"attachment\" as its disposition, or simply
has an associated filename, or has a type that matches a regexp
in TYPES but doesn't match one in EXCEPTIONS.

ACTION-NAME should be a human-readable string describing the
action in minibuffer messages.  Or it can be nil to suppress
messages. 

ACTION will get called with four arguments: MSG LAYOUT TYPE FILENAME.

\(fn COUNT &key ((:name action-name)) ((:action action)) ((:included types)) ((:excluded exceptions)) ((:messages mlist)))" nil nil)

(autoload 'vm-mime-action-on-all-attachments "vm-mime" "\
On the next COUNT messages or marked messages, call the
function ACTION on all \"attachments\".  For the purpose of this
function, an \"attachment\" is a mime part part which has
\"attachment\" as its disposition, or simply has an associated
filename, or has a type that matches a regexp in TYPES but
doesn't match one in EXCEPTIONS.

If QUIET is true no messages are generated.

ACTION will get called with four arguments: MSG LAYOUT TYPE FILENAME.

\(fn COUNT ACTION &optional TYPES EXCEPTIONS MLIST QUIET)" nil nil)

(autoload 'vm-delete-all-attachments "vm-mime" "\
Delete all attachments from the next COUNT messages or marked
messages.  For the purpose of this function, an \"attachment\" is
a mime part part which has \"attachment\" as its disposition or
simply has an associated filename.  Any mime types that match
`vm-mime-deleteable-types' but not `vm-mime-deleteable-type-exceptions'
are also included.

\(fn &optional COUNT)" t nil)

(autoload 'vm-save-all-attachments "vm-mime" "\
Save all attachments in the next COUNT messages or marked
messages.  For the purpose of this function, an \"attachment\" is
a mime part part which has \"attachment\" as its disposition or
simply has an associated filename.  Any mime types that match
`vm-mime-saveable-types' but not `vm-mime-saveable-type-exceptions'
are also included.

The attachments are saved to the specified DIRECTORY.  The
variables `vm-all-attachments-directory' or
`vm-mime-attachment-save-directory' can be used to set the
default location.  When directory does not exist it will be
created.

\(fn &optional COUNT DIRECTORY NO-DELETE-AFTER-SAVING)" t nil)

(autoload 'vm-attach-file "vm-mime" "\
Attach a file to a VM composition buffer to be sent along with the message.
The file is not inserted into the buffer and MIME encoded until
you execute `vm-mail-send' or `vm-mail-send-and-exit'.  A visible tag
indicating the existence of the attachment is placed in the
composition buffer.  You can move the attachment around or remove
it entirely with normal text editing commands.  If you remove the
attachment tag, the attachment will not be sent.

First argument, FILE, is the name of the file to attach.  Second
argument, TYPE, is the MIME Content-Type of the file.  Optional
third argument CHARSET is the character set of the attached
document.  This argument is only used for text types, and it is
ignored for other types.  Optional fourth argument DESCRIPTION
should be a one line description of the file.  Nil means include
no description.  Optional fifth argument NO-SUGGESTED-FILENAME non-nil
means that VM should not add a filename to the Content-Disposition
header created for the object.

When called interactively all arguments are read from the
minibuffer.

This command is for attaching files that do not have a MIME
header section at the top.  For files with MIME headers, you
should use `vm-attach-mime-file' to attach such a file.  VM
will extract the content type information from the headers in
this case and not prompt you for it in the minibuffer.

\(fn FILE TYPE &optional CHARSET DESCRIPTION NO-SUGGESTED-FILENAME)" t nil)

(autoload 'vm-attach-mime-file "vm-mime" "\
Attach a MIME encoded file to a VM composition buffer to be sent
along with the message.

The file is not inserted into the buffer until you execute
`vm-mail-send' or `vm-mail-send-and-exit'.  A visible tag indicating
the existence of the attachment is placed in the composition
buffer.  You can move the attachment around or remove it entirely
with normal text editing commands.  If you remove the attachment
tag, the attachment will not be sent.

The first argument, FILE, is the name of the file to attach.
When called interactively the FILE argument is read from the
minibuffer.

The second argument, TYPE, is the MIME Content-Type of the object.

This command is for attaching files that have a MIME
header section at the top.  For files without MIME headers, you
should use `vm-attach-file' to attach the file.

\(fn FILE TYPE)" t nil)

(autoload 'vm-attach-buffer "vm-mime" "\
Attach a buffer to a VM composition buffer to be sent along with
the message.

The buffer contents are not inserted into the composition
buffer and MIME encoded until you execute `vm-mail-send' or
`vm-mail-send-and-exit'.  A visible tag indicating the existence
of the attachment is placed in the composition buffer.  You
can move the attachment around or remove it entirely with
normal text editing commands.  If you remove the attachment
tag, the attachment will not be sent.

First argument, BUFFER, is the buffer or name of the buffer to
attach.  Second argument, TYPE, is the MIME Content-Type of the
file.  Optional third argument CHARSET is the character set of
the attached document.  This argument is only used for text
types, and it is ignored for other types.  Optional fourth
argument DESCRIPTION should be a one line description of the
file.  Nil means include no description.

When called interactively all arguments are read from the
minibuffer.

This command is for attaching files that do not have a MIME
header section at the top.  For files with MIME headers, you
should use `vm-attach-mime-file' to attach such a file.  VM
will extract the content type information from the headers in
this case and not prompt you for it in the minibuffer.

\(fn BUFFER TYPE &optional CHARSET DESCRIPTION)" t nil)

(autoload 'vm-attach-message "vm-mime" "\
Attach a message from a VM folder to the current VM
composition.

The message is not inserted into the buffer and MIME encoded until
you execute `vm-mail-send' or `vm-mail-send-and-exit'.  A visible tag
indicating the existence of the attachment is placed in the
composition buffer.  You can move the attachment around or remove
it entirely with normal text editing commands.  If you remove the
attachment tag, the attachment will not be sent.

First argument, MESSAGE, is either a VM message struct or a list
of message structs.  When called interactively a message number is read
from the minibuffer.  The message will come from the parent
folder of this composition.  If the composition has no parent,
the name of a folder will be read from the minibuffer before the
message number is read.

If this command is invoked with a prefix argument, the name of a
folder is read and that folder is used instead of the parent
folder of the composition.

If this command is invoked on marked message (via
`vm-next-command-uses-marks') the marked messages in the selected
folder will be attached as a MIME message digest.    If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are attached.

Optional second argument DESCRIPTION is a one-line description of
the message being attached.  This is also read from the
minibuffer if the command is run interactively.

\(fn MESSAGE &optional DESCRIPTION)" t nil)

(autoload 'vm-attach-message-to-composition "vm-mime" "\
Attach the current message from the current VM folder to a VM
composition.

The message is not inserted into the buffer and MIME encoded until
you execute `vm-mail-send' or `vm-mail-send-and-exit'.  A visible tag
indicating the existence of the attachment is placed in the
composition buffer.  You can move the attachment around or remove
it entirely with normal text editing commands.  If you remove the
attachment tag, the attachment will not be sent.

First argument COMPOSITION is the buffer into which the object
will be inserted.  When this function is called interactively
COMPOSITION's name will be read from the minibuffer.

If this command is invoked on marked message (via
`vm-next-command-uses-marks') the marked messages in the selected
folder will be attached as a MIME message digest.    If
applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are attached.

Optional second argument DESCRIPTION is a one-line description of
the message being attached.  This is also read from the
minibuffer if the command is run interactively.

\(fn COMPOSITION &optional DESCRIPTION)" t nil)

(autoload 'vm-attach-object-to-composition "vm-mime" "\
Attach the mime object described by LAYOUT to a VM composition buffer.

The object is not inserted into the buffer and MIME encoded until
you execute `vm-mail-send' or `vm-mail-send-and-exit'.  A visible tag
indicating the existence of the object is placed in the
composition buffer.  You can move the object around or remove
it entirely with normal text editing commands.  If you remove the
object tag, the object will not be sent.

The optional argument COMPOSITION is the buffer into which the object
will be inserted.  When this function is called interactively
COMPOSITION's name will be read from the minibuffer.

\(fn LAYOUT &optional COMPOSITION)" nil nil)

(autoload 'vm-mime-change-content-disposition "vm-mime" "\


\(fn)" t nil)

(autoload 'vm-delete-mime-object "vm-mime" "\
Delete the contents of the MIME object at point.
The MIME object is replaced by a text/plain object that briefly
describes what was deleted.

\(fn &optional SAVED-FILE)" t nil)

(autoload 'vm-mime-encode-words-in-string "vm-mime" "\


\(fn STRING &optional ENCODING)" nil nil)

(autoload 'vm-mime-encode-composition "vm-mime" "\
MIME encode the current mail composition buffer.

This function chooses the MIME character set(s) to use, and transforms the
message content from the Emacs-internal encoding to the corresponding
octets in that MIME character set.

It then applies some transfer encoding to the message. For details of the
transfer encodings available, see the documentation for
`vm-mime-8bit-text-transfer-encoding.'

Finally, it creates the headers that are necessary to identify the message
as one that uses MIME.

Under MULE, it explicitly sets `buffer-file-coding-system' to a binary
 (no-transformation) coding system, to avoid further transformation of the
message content when it's passed to the MTA (that is, the mail transfer
agent; under Unix, normally sendmail.)

Attachment tags added to the buffer with `vm-attach-file' are expanded
and the approriate content-type and boundary markup information is added.

\(fn &optional ATTACHMENTS-ONLY)" t nil)

(autoload 'vm-nuke-alternative-text/html-internal "vm-mime" "\
Delete all text/html parts of multipart/alternative parts of message M.
Returns the number of deleted parts.  text/html parts are only deleted iff
the first sub part of a multipart/alternative is a text/plain part.

\(fn M)" nil nil)

(autoload 'vm-nuke-alternative-text/html "vm-mime" "\
Removes the text/html part of all multipart/alternative message parts.

This is a destructive operation and cannot be undone!

\(fn &optional COUNT MLIST)" t nil)

(autoload 'vm-mime-convert-to-attachment-buttons "vm-mime" "\
Replace all mime buttons in the current buffer by attachment buttons.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-mime" '("vm-")))

;;;***

;;;### (autoloads nil "vm-minibuf" "vm-minibuf.el" (0 0 0 0))
;;; Generated autoloads from vm-minibuf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-minibuf" '("vm-")))

;;;***

;;;### (autoloads nil "vm-misc" "vm-misc.el" (0 0 0 0))
;;; Generated autoloads from vm-misc.el

(autoload 'vm-check-for-killed-folder "vm-misc" "\
If the current buffer's Folder buffer has been killed, reset the
vm-mail-buffer variable.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-misc" '("vm-" "gc-fields")))

;;;***

;;;### (autoloads nil "vm-motion" "vm-motion.el" (0 0 0 0))
;;; Generated autoloads from vm-motion.el

(autoload 'vm-goto-message "vm-motion" "\
Go to the message numbered N.
Interactively N is the prefix argument.  If no prefix arg is provided
N is prompted for in the minibuffer.

If vm-follow-summary-cursor is non-nil this command will go to
the message under the cursor in the summary buffer if the summary
window is selected.  This only happens if no prefix argument is
given.

\(fn N)" t nil)

(autoload 'vm-goto-message-last-seen "vm-motion" "\
Go to the message last previewed.

\(fn)" t nil)

(autoload 'vm-goto-parent-message "vm-motion" "\
Go to the parent of the current message.

\(fn)" t nil)

(autoload 'vm-next-message "vm-motion" "\
Go forward one message and preview it.
With prefix arg (optional first argument) COUNT, go forward COUNT
messages.  A negative COUNT means go backward.  If the absolute
value of COUNT is greater than 1, then the values of the variables
vm-skip-deleted-messages and vm-skip-read-messages are ignored.

When invoked on marked messages (via `vm-next-command-uses-marks')
this command 'sees' marked messages as it moves.

\(fn &optional COUNT RETRY SIGNAL-ERRORS)" t nil)

(autoload 'vm-previous-message "vm-motion" "\
Go back one message and preview it.
With prefix arg COUNT, go backward COUNT messages.  A negative COUNT
means go forward.  If the absolute value of COUNT > 1 the values of the
variables vm-skip-deleted-messages and vm-skip-read-messages are
ignored.

\(fn &optional COUNT RETRY SIGNAL-ERRORS)" t nil)

(autoload 'vm-next-message-no-skip "vm-motion" "\
Like vm-next-message but will not skip deleted or read messages.

\(fn &optional COUNT)" t nil)

(autoload 'vm-previous-message-no-skip "vm-motion" "\
Like vm-previous-message but will not skip deleted or read messages.

\(fn &optional COUNT)" t nil)

(autoload 'vm-next-unread-message "vm-motion" "\
Move forward to the nearest new or unread message, if there is one.

\(fn)" t nil)

(autoload 'vm-previous-unread-message "vm-motion" "\
Move backward to the nearest new or unread message, if there is one.

\(fn)" t nil)

(autoload 'vm-next-message-same-subject "vm-motion" "\
Move forward to the nearest message with the same subject.
vm-subject-ignored-prefix and vm-subject-ignored-suffix will apply
to the subject comparisons.

\(fn)" t nil)

(autoload 'vm-previous-message-same-subject "vm-motion" "\
Move backward to the nearest message with the same subject.
vm-subject-ignored-prefix and vm-subject-ignored-suffix will apply
to the subject comparisons.

\(fn)" t nil)

(autoload 'vm-follow-summary-cursor "vm-motion" "\
Select the message under the cursor in the summary window before
executing commands that operate on the current message.  This occurs
only when the summary buffer window is the selected window.  

If a new message is selected then return t, otherwise nil. USR, 2010-03-08

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-motion" '("vm-")))

;;;***

;;;### (autoloads nil "vm-mouse" "vm-mouse.el" (0 0 0 0))
;;; Generated autoloads from vm-mouse.el

(autoload 'vm-mouse-button-2 "vm-mouse" "\
The immediate action event in VM buffers, depending on where the
mouse is clicked.  See Info node `(VM) Using the Mouse'.

\(fn EVENT)" t nil)

(autoload 'vm-mouse-button-3 "vm-mouse" "\
Brings up the context-sensitive menu in VM buffers, depending
on where the mouse is clicked.  See Info node `(VM) Using the
Mouse'.

\(fn EVENT)" t nil)

(autoload 'vm-mouse-popup-or-select "vm-mouse" "\


\(fn EVENT)" t nil)

(autoload 'vm-mouse-send-url-at-event "vm-mouse" "\


\(fn EVENT)" t nil)

(autoload 'vm-mouse-install-mouse "vm-mouse" "\


\(fn)" nil nil)

(autoload 'vm-mouse-read-file-name-quit-handler "vm-mouse" "\


\(fn &optional NORMAL-EXIT)" t nil)

(autoload 'vm-mouse-read-string-quit-handler "vm-mouse" "\


\(fn &optional NORMAL-EXIT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-mouse" '("vm-")))

;;;***

;;;### (autoloads nil "vm-page" "vm-page.el" (0 0 0 0))
;;; Generated autoloads from vm-page.el

(autoload 'vm-scroll-forward "vm-page" "\
Scrolls forward a screenful of text.
If the current message is being previewed, the message body is revealed.
If at the end of the current message, moves to the next message iff the
value of vm-auto-next-message is non-nil.
Prefix argument N means scroll forward N lines.

\(fn &optional ARG)" t nil)

(autoload 'vm-scroll-backward "vm-page" "\
Scroll backward a screenful of text.
Prefix N scrolls backward N lines.

\(fn &optional ARG)" t nil)

(autoload 'vm-scroll-forward-one-line "vm-page" "\
Scroll forward one line.
Prefix arg N means scroll forward N lines.
Negative arg means scroll backward.

\(fn &optional COUNT)" t nil)

(autoload 'vm-scroll-backward-one-line "vm-page" "\
Scroll backward one line.
Prefix arg N means scroll backward N lines.
Negative arg means scroll forward.

\(fn &optional COUNT)" t nil)

(autoload 'vm-energize-urls "vm-page" "\


\(fn &optional CLEAN-ONLY)" t nil)

(autoload 'vm-energize-urls-in-message-region "vm-page" "\


\(fn &optional START END)" t nil)

(autoload 'vm-present-current-message "vm-page" "\
Display the current message in the Presentation Buffer.  A
copy of the message is made in the Presentation Buffer and MIME
decoding is done if necessary.  The displayed content might be a
preview or the full message, governed by the the variables
`vm-preview-lines' and `vm-preview-read-messages'.  USR,2010-01-14

\(fn)" nil nil)

(autoload 'vm-expose-hidden-headers "vm-page" "\
Toggle exposing and hiding message headers that are normally not visible.

\(fn)" t nil)

(autoload 'vm-beginning-of-message "vm-page" "\
Moves to the beginning of the current message.

\(fn)" t nil)

(autoload 'vm-end-of-message "vm-page" "\
Moves to the end of the current message, exposing and flagging it read
as necessary.

\(fn)" t nil)

(autoload 'vm-next-button "vm-page" "\
Moves to the next button in the current message.
Prefix argument N means move to the Nth next button.
Negative N means move to the Nth previous button.
If there is no next button, an error is signaled and point is not moved.

A button is a highlighted region of text where pressing RETURN
will produce an action.  If the message is being previewed, it is
exposed and marked as read.

\(fn COUNT)" t nil)

(autoload 'vm-previous-button "vm-page" "\
Moves to the previous button in the current message.
Prefix argument N means move to the Nth previous button.
Negative N means move to the Nth next button.
If there is no previous button, an error is signaled and point is not moved.

A button is a highlighted region of text where pressing RETURN
will produce an action.  If the message is being previewed, it is
exposed and marked as read.

\(fn COUNT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-page" '("vm-")))

;;;***

;;;### (autoloads nil "vm-pcrisis" "vm-pcrisis.el" (0 0 0 0))
;;; Generated autoloads from vm-pcrisis.el

(autoload 'vmpc-run-action "vm-pcrisis" "\
Run all actions with names matching the ACTION-REGEXP.
If called interactivly it promts for the regexp.  You may also use
completion.

\(fn &optional ACTION-REGEXP)" t nil)

(autoload 'vmpc-toggle-no-automorph "vm-pcrisis" "\
Disable automorph for the current buffer.
When automorph is not doing the right thing and you want to disable it for the
current composition, then call this function.

\(fn)" t nil)

(autoload 'vmpc-automorph "vm-pcrisis" "\
*Change contents of the current mail message based on its own headers.
Unless `vmpc-current-state' is 'no-automorph, headers and signatures can be
changed; pre-signatures added; functions called.

Call `vmpc-no-automorph' to disable it for the current buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-pcrisis" '("vmpc-")))

;;;***

;;;### (autoloads nil "vm-pgg" "vm-pgg.el" (0 0 0 0))
;;; Generated autoloads from vm-pgg.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-pgg" '("vm-")))

;;;***

;;;### (autoloads nil "vm-pine" "vm-pine.el" (0 0 0 0))
;;; Generated autoloads from vm-pine.el

(autoload 'vm-summary-function-f "vm-pine" "\
Return the recipient or newsgroup for uninteresting senders.
If the \"From:\" header contains the user login or full name then
this function returns the \"To:\" or \"Newsgroups:\" header field with a
\"To:\" as prefix.

For example the outgoing message box will now list to whom you sent the
messages.  Use `vm-fix-summary' to update the summary of a folder! With
loaded BBDB it uses `vm-summary-function-B' to obtain the full name of the
sender.  The only difference to VMs default behavior is the honoring of
messages sent to news groups. ;c)

See also:    `vm-summary-uninteresting-senders'

\(fn M)" t nil)

(defvar vm-postponed-header "X-VM-postponed-data: " "\
Additional header which is inserted to postponed messages.
It is used for internal things and should not be modified. 
It is a lisp list which currently contains the following items:
 <date of the postponing>
 <reply references list>
 <forward references list>
 <redistribute references list>
while the last three are set by `vm-get-persistent-message-ids-for'.")

(custom-autoload 'vm-postponed-header "vm-pine" t)

(defvar vm-postponed-folder "postponed" "\
The name of the folder where postponed messages are saved.")

(custom-autoload 'vm-postponed-folder "vm-pine" t)

(defvar vm-postponed-message-headers '("From:" "Organization:" "Reply-To:" "To:" "Newsgroups:" "CC:" "BCC:" "FCC:" "In-Reply-To:" "References:" "Subject:" "X-Priority:" "Priority:") "\
Similar to `vm-forwarded-headers'.
A list of headers that should be kept, when continuing a postponed message.

The following mime headers should not be kept, since this breaks things:
Mime-Version, Content-Type, Content-Transfer-Encoding.")

(custom-autoload 'vm-postponed-message-headers "vm-pine" t)

(defvar vm-postponed-message-discard-header-regexp nil "\
Similar to `vm-unforwarded-header-regexp'.
A regular expression matching all headers that should be discard when
when continuing a postponed message.")

(custom-autoload 'vm-postponed-message-discard-header-regexp "vm-pine" t)

(defvar vm-continue-postponed-message-hook nil "\
List of hook functions to be run after continuing a postponed message.")

(custom-autoload 'vm-continue-postponed-message-hook "vm-pine" t)

(defvar vm-postpone-message-hook nil "\
List of hook functions to be run before postponing a message.")

(custom-autoload 'vm-postpone-message-hook "vm-pine" t)

(autoload 'vm-continue-postponed-message "vm-pine" "\
Continue composing of the currently selected message.
Before continuing the composition you may decode the presentation as
you like, by pressing [D] and viewing part of the message!
Then current message is copied to a new buffer and the vm-mail-mode is
entered.  When every thing is finished the hook functions in
`vm-mail-mode-hook' and `vm-continue-postponed-message-hook' are
executed.  When called with a prefix argument it will not switch to
the composition buffer, this may be used for automatic editing of
messages.

The variables `vm-postponed-message-headers' and
`vm-postponed-message-discard-header-regexp' control which
headers are copied to the composition buffer.

If optional argument SILENT is positive then act in background (no frame
creation).

\(fn &optional SILENT)" t nil)

(autoload 'vm-reply-by-continue-postponed-message "vm-pine" "\
Like `vm-reply' but preserves attachments.

\(fn)" t nil)

(autoload 'vm-postpone-message "vm-pine" "\
Save the current composition as a draft.
Before saving the composition the `vm-postpone-message-hook' functions
are executed and it is written into the FOLDER `vm-postponed-folder'.
When called with a prefix argument you will be asked for
the folder.
Optional argument DONT-KILL is positive, then do not kill source message.

\(fn &optional FOLDER DONT-KILL NO-POSTPONE-HEADER)" t nil)

(autoload 'vm-continue-what-message "vm-pine" "\
Continue compositions or postponed messages if there are some.

With a prefix arg, call `vm-continue-postponed-message', i.e. continue the
currently selected message.

See `vm-continue-what-message' and `vm-zero-drafts-start-compose' for
configuration.

\(fn &optional WHERE)" t nil)

(autoload 'vm-continue-what-message-other-window "vm-pine" "\
Ask for continuing of postponed messages if there are some.

\(fn)" t nil)

(autoload 'vm-continue-what-message-other-frame "vm-pine" "\
Ask for continuing of postponed messages if there are some.

\(fn)" t nil)

(defvar vm-mail-return-receipt-to (concat (user-full-name) " <" user-mail-address ">") "\
The address where return receipts should be sent to.")

(custom-autoload 'vm-mail-return-receipt-to "vm-pine" t)

(autoload 'vm-mail-return-receipt-to "vm-pine" "\
Insert the \"Return-Receipt-To\" header into a `vm-mail-mode' buffer.
See the variable `vm-mail-return-receipt-to'.

\(fn)" t nil)

(autoload 'vm-mail-notice-requested-upon-delivery-to "vm-pine" "\
Notice-Requested-Upon-Delivery-To:

\(fn)" t nil)

(defvar vm-mail-priority "Priority: urgent\nImportance: High\nX-Priority: 1" "\
The priority headers.")

(custom-autoload 'vm-mail-priority "vm-pine" t)

(autoload 'vm-mail-priority "vm-pine" "\
Insert priority headers into a `vm-mail-mode' buffer.
See the variable `vm-mail-priority'.

\(fn)" t nil)

(defvar vm-mail-folder-alist (if (boundp 'vm-auto-folder-alist) vm-auto-folder-alist) "\
Like `vm-auto-folder-alist' but for outgoing messages.
It should be fed to `vm-mail-select-folder'.")

(custom-autoload 'vm-mail-folder-alist "vm-pine" t)

(defvar vm-mail-fcc-default '(or (vm-mail-select-folder vm-mail-folder-alist) (vm-mail-to-fcc nil t) mail-archive-file-name) "\
A list which is evaluated to return a folder name.
By reordering the elements of this list or adding own functions you
can control the behavior of vm-mail-fcc and `vm-mail-auto-fcc'.
You may allow a sophisticated decision for the right folder for your
outgoing message.")

(custom-autoload 'vm-mail-fcc-default "vm-pine" t)

(autoload 'vm-mail-fcc "vm-pine" "\
Insert the FCC-header into a `vm-mail-mode' buffer.
Like `mail-fcc', but honors VM variables and offers a default folder
according to `vm-mail-folder-alist'.
Called with prefix ARG it just removes the FCC-header.

\(fn &optional ARG)" t nil)

(autoload 'vm-mail-auto-fcc "vm-pine" "\
Add a new FCC field, with file name guessed by `vm-mail-folder-alist'.
You likely want to add it to `vm-reply-hook' by
   (add-hook 'vm-reply-hook 'vm-mail-auto-fcc)
or if sure about what you are doing you can add it to mail-send-hook.

\(fn)" t nil)

(autoload 'vm-mail-select-folder "vm-pine" "\
Return a folder according to FOLDER-ALIST for the current message.
This function is a slightly changed version of `vm-auto-select-folder'.

\(fn FOLDER-ALIST)" t nil)

(defvar vm-mail-to-regexp "\\([^<	\n ]+\\)@" "\
A regexp matching the part of an email address to use as FCC-folder.
The string enclosed in \"\\\\(\\\\)\" is used as folder name.")

(custom-autoload 'vm-mail-to-regexp "vm-pine" t)

(defvar vm-mail-to-headers '("To:" "CC:" "BCC:") "\
A list of headers for finding the email address to use as FCC-folder.")

(custom-autoload 'vm-mail-to-headers "vm-pine" t)

(autoload 'vm-mail-to-fcc "vm-pine" "\
Insert a FCC-header into a `vm-mail-mode' buffer.
Like `mail-fcc', but honors VM variables and inserts the first email
address (or the like matched by `vm-mail-to-regexp') found in the headers
listed in `vm-mail-to-headers'.
Called with prefix ARG it just removes the FCC-header.
If optional argument RETURN-ONLY is t just returns FCC.

\(fn &optional ARG RETURN-ONLY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-pine" '("vm-")))

;;;***

;;;### (autoloads nil "vm-pop" "vm-pop.el" (0 0 0 0))
;;; Generated autoloads from vm-pop.el

(autoload 'vm-pop-move-mail "vm-pop" "\


\(fn SOURCE DESTINATION)" nil nil)

(autoload 'vm-expunge-pop-messages "vm-pop" "\
Deletes all messages from POP mailbox that have already been retrieved
into the current folder.  VM sends POP DELE commands to all the
relevant POP servers to remove the messages.

\(fn)" t nil)

(autoload 'vm-pop-synchronize-folder "vm-pop" "\


\(fn &optional &key (interactive nil) (do-remote-expunges nil) (do-local-expunges nil) (do-retrieves nil))" nil nil)

(autoload 'vm-pop-folder-check-mail "vm-pop" "\
Check if there is new mail on the POP server for the current POP
folder.

Optional argument INTERACTIVE says whether this function is being
called from an interactive use of a command.

\(fn &optional INTERACTIVE)" nil nil)

(autoload 'vm-pop-find-spec-for-name "vm-pop" "\
Returns the full maildrop specification of a short name NAME.

\(fn NAME)" nil nil)

(autoload 'vm-pop-find-name-for-spec "vm-pop" "\
Returns the short name of a POP maildrop specification SPEC.

\(fn SPEC)" nil nil)

(autoload 'vm-pop-find-name-for-buffer "vm-pop" "\


\(fn BUFFER)" nil nil)

(autoload 'vm-pop-make-filename-for-spec "vm-pop" "\
Returns a cache file name appropriate for the POP maildrop
specification SPEC.

\(fn SPEC &optional SCRUB-PASSWORD SCRUB-SPEC)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-pop" '("vm-")))

;;;***

;;;### (autoloads nil "vm-ps-print" "vm-ps-print.el" (0 0 0 0))
;;; Generated autoloads from vm-ps-print.el

(defvar vm-ps-print-message-function 'ps-print-buffer-with-faces "\
*This should point to the function which is used for ps-printing.
The function should accept one optional argument which is a filename.")

(custom-autoload 'vm-ps-print-message-function "vm-ps-print" t)

(defvar vm-ps-print-message-separater "\n" "\
*The separator between messages when printing multiple messages.")

(custom-autoload 'vm-ps-print-message-separater "vm-ps-print" t)

(defvar vm-ps-print-message-font-size 10 "\
*The font size for the PS-output of the message text.")

(custom-autoload 'vm-ps-print-message-font-size "vm-ps-print" t)

(defvar vm-ps-print-message-header-lines 2 "\
*See `ps-header-lines'.")

(custom-autoload 'vm-ps-print-message-header-lines "vm-ps-print" t)

(defvar vm-ps-print-message-left-header '(list (format "(Folder `%s')" folder-name) (format "(%d message%s printed)" mcount (if (= mcount 1) "" "s"))) "\
*This variable should contain a command returning a valid `ps-left-header'.")

(custom-autoload 'vm-ps-print-message-left-header "vm-ps-print" t)

(defvar vm-ps-print-message-right-header '(list "/pagenumberstring load" 'dd-mon-yyyy) "\
*This variable should contain a command returning a valid `ps-right-header'.
The defaults to the number of pages and the date of the printout.")

(custom-autoload 'vm-ps-print-message-right-header "vm-ps-print" t)

(defvar vm-ps-print-message-summary-format (concat "******************************************************************************\n" (if (boundp 'vm-summary-format) vm-summary-format "%n %*%a %-17.17F %-3.3m %2d %4l/%-5c %I\"%s\"\n") "******************************************************************************\n") "\
*The summary line before a message.
See `vm-summary-format' for a description of the conversion specifiers.")

(custom-autoload 'vm-ps-print-message-summary-format "vm-ps-print" t)

(defvar vm-ps-print-each-message-header-lines 2 "\
*See `ps-header-lines'.")

(custom-autoload 'vm-ps-print-each-message-header-lines "vm-ps-print" t)

(defvar vm-ps-print-each-message-left-header '(list (format "(Folder `%s')" folder-name) (format "(%s)" (vm-ps-print-tokenized-summary msg (vm-summary-sprintf vm-ps-print-each-message-summary-format msg t)))) "\
*This command should return a valid `ps-left-header'.
The default is to have the folder name and a summary according to the
variable `vm-ps-print-each-message-summary-format' in the left header.")

(custom-autoload 'vm-ps-print-each-message-left-header "vm-ps-print" t)

(defvar vm-ps-print-each-message-right-header '(list "/pagenumberstring load" 'dd-mon-yyyy) "\
*This variable should contain a command returning a valid `ps-right-header'.
The defaults to the number of pages and the date of the printout.")

(custom-autoload 'vm-ps-print-each-message-right-header "vm-ps-print" t)

(defvar vm-ps-print-each-message-summary-format "Message# %n, Lines %l, Characters %c" "\
*The summary line for the postscript header.
See `vm-summary-format' for a description of the conversion specifiers.")

(custom-autoload 'vm-ps-print-each-message-summary-format "vm-ps-print" t)

(autoload 'vm-ps-print-message "vm-ps-print" "\
PS-Print the current message.

A positive COUNT arg N means print the current message and the next
N-1 messages and a negative one print the current message and the
previous N-1 messages.

If FILENAME is specified then write PS into that file.

When printing a single message it acts like `vm-ps-print-each-message'.
When printing multiple messages it will insert a summary line according
to the variable `vm-ps-print-message-summary-format' and a separator
according to the variable `vm-ps-print-message-separater' between
messages.  You might force the printing of one job per message, by
giving a t EACH argument.

See: `vm-ps-print-message-function'
     `vm-ps-print-message-font-size'
     `vm-ps-print-message-summary-format'
     `vm-ps-print-message-separater'
     `vm-ps-print-message-left-header'
     `vm-ps-print-message-right-header'
for customization of the output.

\(fn &optional COUNT FILENAME EACH)" t nil)

(autoload 'vm-ps-print-each-message "vm-ps-print" "\
PS-Print the current message.
A positive COUNT arg N means print the current message and the next
N-1 messages and a negative one print the current message and the
previous N-1 messages.

If FILENAME is specified then write PS into that file.

This function acts like `vm-ps-print-message', but it will generate a
separate print job for each message and it does not generate the
summary lines between messages.

See: `vm-ps-print-message-function'
     `vm-ps-print-message-font-size'
     `vm-ps-print-each-message-separater'
     `vm-ps-print-each-message-left-header'
     `vm-ps-print-each-message-right-header'
     `vm-ps-print-each-message-summary-format'
for customization of the output.

\(fn &optional COUNT FILENAME)" t nil)

(autoload 'vm-ps-print-message-presentation "vm-ps-print" "\
PS-Print the currently presented message.
When called with a numeric prefix argument, prompts the user for the
name of a file to save the PostScript image in, instead of sending it
to the printer.

More specifically, the FILENAME argument is treated as follows: if it
is nil, send the image to the printer.  If FILENAME is a string, save
the PostScript image in a file with that name.  If FILENAME is a
number, prompt the user for the name of the file to save in.

See: `vm-ps-print-message-function'
     `vm-ps-print-message-font-size'
     `vm-ps-print-each-message-separater'
     `vm-ps-print-each-message-left-header'
     `vm-ps-print-each-message-right-header'
     `vm-ps-print-each-message-summary-format'
for customization of the output.

\(fn &optional FILENAME)" t nil)

(autoload 'vm-ps-print-message-fix-menu "vm-ps-print" "\
Fix VM-menu MENU.
If EACH it t, then replace `vm-print-message' by
'vm-ps-print-each-message', otherwise by `vm-ps-print-message'.

\(fn MENU EACH)" nil nil)

(autoload 'vm-ps-print-message-infect-vm "vm-ps-print" "\
Call this function to hook the ps-printing functions into VM.
Arranges that the usual VM printing commands in menus and the toolbar
use `vm-ps-print-message' or `vm-ps-print-each-message' (when EACH is
t) instead of `vm-print-message'.

\(fn &optional EACH)" t nil)

(autoload 'vm-ps-print-marked "vm-ps-print" "\
Postscript print all marked emails in mail Summary. If no messages marked,
print just the current message.
Optionally write postscript output to FILENAME (default is to spool
to printer). 
Optionally force SEPERATE printing of each message by setting to 't'. 
Optionally also print NUP pages per sheet.
Optionally also print in COLOR by setting to non-nil.

Note when run interactively setting a positive prefix number prints
NUP pages per sheet to  the printer, while negative number prints NUP
pages per sheet to queried FILENAME. No prefix prints 1 page per sheet
to printer while prefix without numerical argument simply queries for
filename and formats 1 page per sheet. (JJK)

\(fn &optional FILENAME SEPERATE NUP COLOR)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-ps-print" '("vm-ps-print-")))

;;;***

;;;### (autoloads nil "vm-reply" "vm-reply.el" (0 0 0 0))
;;; Generated autoloads from vm-reply.el

(autoload 'vm-fill-long-lines-in-reply "vm-reply" "\


\(fn)" t nil)

(autoload 'vm-do-reply "vm-reply" "\
Set up a VM composition buffer for sending a reply (and switch the
focus to that buffer?).  The reply is sent to the current message in
the folder buffer or other selected messages.  The dynamically bound
variable `vm-enable-thread-operations' should be bound to nil before
calling this function in order to avoid surprises for the user.

The argument TO-ALL says whether the reply should go to all the
recipients of the original messages.  INCLUDE-TEXT says whether
the body of those messages should be included in the reply.
COUNT is the prefix argument indicating how many consecutive
messages of the folder are involved in this reply.

\(fn TO-ALL INCLUDE-TEXT COUNT)" nil nil)

(autoload 'vm-mail-yank-default "vm-reply" "\
The default message yank handler when `mail-citation-hook' is set to nil.

\(fn &optional MESSAGE)" nil nil)

(autoload 'vm-yank-message-other-folder "vm-reply" "\
Like vm-yank-message except the message is yanked from a folder other
than the one that spawned the current Mail mode buffer.  The name of the
folder is read from the minibuffer.

Don't call this function from a program.

\(fn FOLDER)" t nil)

(autoload 'vm-yank-message "vm-reply" "\
Yank message number N into the current buffer at point.
When called interactively N is always read from the minibuffer.  When
called non-interactively the first argument is expected to be a
message struct.

This command is meant to be used in VM created Mail mode buffers; the
yanked message comes from the mail buffer containing the message you
are replying to, forwarding, or invoked VM's mail command from.

All message headers are yanked along with the text.  Point is
left before the inserted text, the mark after.  Any hook
functions bound to `mail-citation-hook' are run, after inserting
the text and setting point and mark.  For backward compatibility,
if mail-citation-hook is set to nil, `mail-yank-hooks' is run
instead.

If mail-citation-hook and mail-yank-hooks are both nil, this
default action is taken: the yanked headers are trimmed as
specified by `vm-included-text-headers' and
`vm-included-text-discard-header-regexp', and the value of
`vm-included-text-prefix' is prepended to every yanked line.

\(fn MESSAGE)" t nil)

(autoload 'vm-mail-send-and-exit "vm-reply" "\
Send message and maybe delete the composition buffer.
The value of `vm-keep-sent-mesages' determines whether the composition buffer
is deleted.  If the composition is a reply to a message in a currently visited
folder, that message is marked as having been replied to.

\(fn &rest IGNORED)" t nil)

(autoload 'vm-mail-get-header-contents "vm-reply" "\
Return the contents of the header(s) matching HEADER-NAME-REGEXP
for the message in the current-buffer.    The result will be a string that is
mime-encoded.  The optional argument CLUMP-SEP, if present, should be
a string, which can be used as a separator to concatenate the fields
of multiple header lines which might match HEADER-NAME-REGEXP.

This function is a variant of `vm-get-header-contents'.

\(fn HEADER-NAME-REGEXP &optional CLUMP-SEP)" nil nil)

(autoload 'vm-mail-send "vm-reply" "\
Just like mail-send except that VM flags the appropriate message(s)
as replied to, forwarded, etc, if appropriate.

\(fn)" t nil)

(autoload 'vm-do-fcc-before-mime-encode "vm-reply" "\
The name says it all.
Sometimes you may want to save a message unencoded, specifically not to waste
storage for attachments which are stored on disk anyway.

\(fn)" t nil)

(autoload 'vm-mail-mode-get-header-contents "vm-reply" "\


\(fn HEADER-NAME-REGEXP)" nil nil)

(autoload 'vm-mail-mode-remove-header "vm-reply" "\


\(fn HEADER-NAME-REGEXP)" nil nil)

(autoload 'vm-reply "vm-reply" "\
Reply to the sender of the current message.
Numeric prefix argument N means to reply to the current message plus the
next N-1 messages.  A negative N means reply to the current message and
the previous N-1 messages.

If invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages will be replied to.

You will be placed into a standard Emacs Mail mode buffer to compose and
send your message.  See the documentation for the function `mail' for
more info.

Note that the normal binding of C-c C-y in the reply buffer is
automatically changed to `vm-yank-message' during a reply.  This
allows you to yank any message from the current folder into a
reply.

Normal VM commands may be accessed in the reply buffer by prefixing them
with C-c C-v.

\(fn COUNT)" t nil)

(autoload 'vm-reply-include-text "vm-reply" "\
Reply to the sender (only) of the current message and include text
from the message.  See the documentation for function vm-reply for details.

\(fn COUNT)" t nil)

(autoload 'vm-followup "vm-reply" "\
Reply to all recipients of the current message.
See the documentation for the function vm-reply for details.

\(fn COUNT)" t nil)

(autoload 'vm-followup-include-text "vm-reply" "\
Reply to all recipients of the current message and include text from
the message.  See the documentation for the function vm-reply for details.

\(fn COUNT)" t nil)

(autoload 'vm-forward-message-all-headers "vm-reply" "\
Like `vm-forward-message' but forwards all the headers.

\(fn)" t nil)

(autoload 'vm-forward-message-plain "vm-reply" "\
Forward the current message in plain text to one or more
recipients.  You will be placed in a Mail mode buffer as you
would with a reply, but you must fill in the \"To:\" header and
perhaps the \"Subject:\" header manually.

Any MIME attachments in the forwarded message will be attached
to the outgoing message.

See `vm-forward-message' for other forms of forwarding.

\(fn)" t nil)

(autoload 'vm-forward-message "vm-reply" "\
Forward the current message to one or more recipients.
You will be placed in a Mail mode buffer as you would with a
reply, but you must fill in the \"To:\" header and perhaps the
\"Subject:\" header manually.

See `vm-forward-message-plain' for forwarding messages in plain text.

\(fn &optional PLAIN MLIST)" t nil)

(autoload 'vm-resend-bounced-message "vm-reply" "\
Extract the original text from a bounced message and resend it.
You will be placed in a Mail mode buffer with the extracted message and
you can change the recipient address before resending the message.

\(fn)" t nil)

(autoload 'vm-resend-message "vm-reply" "\
Resend the current message to someone else.
The current message will be copied to a Mail mode buffer and you
can edit the message and send it as usual.

NOTE: since you are doing a resend, a Resent-To header is provided
for you to fill in the new recipient list.  If you don't fill in
this header, what happens when you send the message is undefined.
You may also create a Resent-Cc header.

\(fn)" t nil)

(autoload 'vm-send-digest "vm-reply" "\
Send a digest of all messages in the current folder to recipients.
The type of the digest is specified by the variable `vm-digest-send-type'.
You will be placed in a Mail mode buffer as is usual with replies, but you
must fill in the \"To:\" and \"Subject:\" headers manually.

Prefix arg means to insert a list of preamble lines at the beginning of
the digest.  One line is generated for each message being digestified.
The variable `vm-digest-preamble-format' determines the format of the
preamble lines.

If invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages will be put into the digest.  If applied to
collapsed threads in summary and thread operations are enabled via
`vm-enable-thread-operations' then all messages in the thread are
included in the digest.

\(fn &optional PREFIX MLIST)" t nil)

(autoload 'vm-send-rfc934-digest "vm-reply" "\
Like vm-send-digest but always sends an RFC 934 digest.

\(fn &optional PREAMBLE)" t nil)

(autoload 'vm-send-rfc1153-digest "vm-reply" "\
Like vm-send-digest but always sends an RFC 1153 digest.

\(fn &optional PREAMBLE)" t nil)

(autoload 'vm-send-mime-digest "vm-reply" "\
Like vm-send-digest but always sends an MIME (multipart/digest) digest.

\(fn &optional PREAMBLE)" t nil)

(autoload 'vm-continue-composing-message "vm-reply" "\
Find and select the most recently used mail composition buffer.
If the selected buffer is already a Mail mode buffer then it is
buried before beginning the search.  Non Mail mode buffers and
unmodified Mail buffers are skipped.  Prefix arg means unmodified
Mail mode buffers are not skipped.  If no suitable buffer is
found, the current buffer remains selected.

\(fn &optional NOT-PICKY)" t nil)

(autoload 'vm-mail-to-mailto-url "vm-reply" "\
Creates a message composition buffer to send mail to the URL.  This
command can be invoked from external agents via an emacsclient.

\(fn URL)" t nil)

(autoload 'vm-mail-internal "vm-reply" "\
Create a message buffer and set it up according to args.
Fills in the headers as given by the arguments.
Binds the `vm-mail-mode-map' and hooks

\(fn &key BUFFER-NAME TO GUESSED-TO SUBJECT IN-REPLY-TO CC REFERENCES NEWSGROUPS)" nil nil)

(autoload 'vm-reply-other-frame "vm-reply" "\
Like vm-reply, but run in a newly created frame.

\(fn COUNT)" t nil)

(autoload 'vm-reply-include-text-other-frame "vm-reply" "\
Like vm-reply-include-text, but run in a newly created frame.

\(fn COUNT)" t nil)

(autoload 'vm-followup-other-frame "vm-reply" "\
Like vm-followup, but run in a newly created frame.

\(fn COUNT)" t nil)

(autoload 'vm-followup-include-text-other-frame "vm-reply" "\
Like vm-followup-include-text, but run in a newly created frame.

\(fn COUNT)" t nil)

(autoload 'vm-forward-message-all-headers-other-frame "vm-reply" "\
Like vm-forward-message-all-headers, but run in a newly created frame.

\(fn)" t nil)

(autoload 'vm-forward-message-other-frame "vm-reply" "\
Like vm-forward-message, but run in a newly created frame.

\(fn)" t nil)

(autoload 'vm-forward-message-plain-other-frame "vm-reply" "\
Like vm-forward-message-plain, but run in a newly created frame.

\(fn)" t nil)

(autoload 'vm-resend-message-other-frame "vm-reply" "\
Like vm-resend-message, but run in a newly created frame.

\(fn)" t nil)

(autoload 'vm-resend-bounced-message-other-frame "vm-reply" "\
Like vm-resend-bounced-message, but run in a newly created frame.

\(fn)" t nil)

(autoload 'vm-send-digest-other-frame "vm-reply" "\
Like vm-send-digest, but run in a newly created frame.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-send-rfc934-digest-other-frame "vm-reply" "\
Like vm-send-rfc934-digest, but run in a newly created frame.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-send-rfc1153-digest-other-frame "vm-reply" "\
Like vm-send-rfc1153-digest, but run in a newly created frame.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-send-mime-digest-other-frame "vm-reply" "\
Like vm-send-mime-digest, but run in a newly created frame.

\(fn &optional PREFIX)" t nil)

(autoload 'vm-preview-composition "vm-reply" "\
Show how the current composition buffer might be displayed
in a MIME-aware mail reader.  VM copies and encodes the current
mail composition buffer and displays it as a mail folder.
Type `q' to quit this temp folder and return to composing your
message.

\(fn)" t nil)

(autoload 'vm-mail-mode-remove-tm-hooks "vm-reply" "\


\(fn)" nil nil)

(autoload 'vm-dnd-attach-file "vm-reply" "\
Insert a drag and drop file as a MIME attachment in a VM
composition buffer.  URI is the url of the file as described in
`dnd-protocol-alist'.  ACTION is ignored.

\(fn URI ACTION)" nil nil)

(autoload 'vm-ns-attach-file "vm-reply" "\
Insert a drag and drop file as a MIME attachment in a VM
composition buffer.  This is a version of `vm-dnd-attach-file'
that is needed for Mac and NextStep.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-reply" '("vm-")))

;;;***

;;;### (autoloads nil "vm-rfaddons" "vm-rfaddons.el" (0 0 0 0))
;;; Generated autoloads from vm-rfaddons.el

(autoload 'vm-rfaddons-infect-vm "vm-rfaddons" "\
This function will setup the key bindings, advices and hooks
necessary to use all the function of vm-rfaddons.el.

SIT-FOR specifies the number of seconds to display the infection message.
The OPTION-LIST can be use to select individual option.
The EXCLUDE-OPTION-LIST can be use to exclude individual option.

The following options are possible.

`general' options:
 - rf-faces: change some faces

`vm-mail-mode' options:
 - attach-save-files: bind [C-c C-a] to `vm-attach-files-in-directory' 
 - check-recipients: add `vm-mail-check-recipients' to `mail-send-hook' in
   order to check if the recipients headers are correct.
 - encode-headers: add `vm-mime-encode-headers' to `mail-send-hook' in
   order to encode the headers before sending.
 - fake-date: if enabled allows you to fake the date of an outgoing message.

`vm-mode' options:
 - shrunken-headers: enable shrunken-headers by advising several functions 

Other EXPERIMENTAL options:
 - auto-save-all-attachments: add `vm-mime-auto-save-all-attachments' to
   `vm-select-new-message-hook' for automatic saving of attachments and define
   an advice for `vm-set-deleted-flag-of' in order to automatically delete
   the files corresponding to MIME objects of type message/external-body when
   deleting the message.
 - return-receipt-to

If you want to use only a subset of the options then call
`vm-rfaddons-infect-vm' like this:
        (vm-rfaddons-infect-vm 2 '(general vm-mail-mode shrunken-headers)
                                 '(fake-date))
This will enable all `general' and `vm-mail-mode' options plus the
`shrunken-headers' option, but it will exclude the `fake-date' option of the
`vm-mail-mode' options.

or do the binding and advising on your own.

\(fn &optional SIT-FOR OPTION-LIST EXCLUDE-OPTION-LIST)" t nil)

(autoload 'vm-followup-include-presentation "vm-rfaddons" "\
Include presentation instead of text.
This does not work when replying to multiple messages.

\(fn COUNT)" t nil)

(autoload 'vm-reply-include-presentation "vm-rfaddons" "\
Include presentation instead of text.
This does only work with my modified VM, i.e. a hacked `vm-yank-message'.

\(fn COUNT &optional TO-ALL)" t nil)

(autoload 'vm-attach-files-in-directory "vm-rfaddons" "\
Attach all files in DIRECTORY matching REGEXP.
The optional argument MATCH might specify a regexp matching all files
which should be attached, when empty all files will be attached.

When called with a prefix arg it will do a literal match instead of a regexp
match.

\(fn DIRECTORY &optional REGEXP)" t nil)

(autoload 'vm-mime-auto-save-all-attachments "vm-rfaddons" "\
Save all attachments to a subdirectory.
Root directory for saving is `vm-mime-attachment-save-directory'.

You might add this to `vm-select-new-message-hook' in order to automatically
save attachments.

    (add-hook 'vm-select-new-message-hook 'vm-mime-auto-save-all-attachments)

\(fn &optional COUNT)" t nil)

(autoload 'vm-mime-auto-save-all-attachments-delete-external "vm-rfaddons" "\
Deletes the external attachments created by `vm-save-all-attachments'.
You may want to use this function in order to get rid of the external files
when deleting a message.

See the advice in `vm-rfaddons-infect-vm'.

\(fn MSG)" t nil)

(autoload 'vm-mail-check-recipients "vm-rfaddons" "\
Check if the recipients are specified correctly.
Actually it checks only if there are any missing commas or the like in the
headers.

\(fn)" t nil)

(autoload 'vm-mail-check-for-empty-subject "vm-rfaddons" "\
Check if the subject line is empty and issue an error if so.

\(fn)" t nil)

(autoload 'vm-shrunken-headers-toggle "vm-rfaddons" "\
Toggle display of shrunken headers.

\(fn)" t nil)

(autoload 'vm-shrunken-headers-toggle-this-mouse "vm-rfaddons" "\
Toggle display of shrunken headers.

\(fn &optional EVENT)" t nil)

(autoload 'vm-shrunken-headers-toggle-this-widget "vm-rfaddons" "\


\(fn WIDGET &rest EVENT)" nil nil)

(autoload 'vm-shrunken-headers-toggle-this "vm-rfaddons" "\
Toggle display of shrunken headers.

\(fn)" t nil)

(autoload 'vm-shrunken-headers "vm-rfaddons" "\
Hide or show headers which occupy more than one line.
Well, one might do it more precisely with only some headers,
but it is sufficient for me!

If the optional argument TOGGLE, then hiding is toggled.

The face used for the visible hidden regions is `vm-shrunken-headers-face' and
the keymap used within that region is `vm-shrunken-headers-keymap'.

\(fn &optional TOGGLE)" t nil)

(autoload 'vm-assimilate-html-message "vm-rfaddons" "\
Try to assimilate a message which is only in html format.
When called with a prefix argument then it will replace the message
with the PLAIN text version otherwise it will create a text/mixed or
text/alternative message depending on the value of the variable
`vm-assimilate-html-mixed'.

\(fn &optional PLAIN)" t nil)

(autoload 'vm-summary-attachment-label "vm-rfaddons" "\
Indicate if there are attachments in a message.
The summary displays a `vm-summary-attachment-indicator', which is a '$' by
default.  In order to get this working, add a \"%1UA\" to your
`vm-summary-format' and call `vm-fix-my-summary'.

As a sideeffect a label can be added to new messages.  Setting 
`vm-summary-attachment-label' to a string (the label) enables this.
If you just want the label, then set `vm-summary-attachment-indicator' to nil
and add an \"%0UA\" to your `vm-summary-format'.

\(fn MSG)" nil nil)

(autoload 'vm-delete-quit "vm-rfaddons" "\
Delete mails and quit.  Expunge only if it's not the primary inbox.

\(fn)" t nil)

(autoload 'vm-mail-mode-install-open-line "vm-rfaddons" "\
Install the open-line hooks for `vm-mail-mode'.
Add this to `vm-mail-mode-hook'.

\(fn)" nil nil)

(autoload 'vm-mail-mode-elide-reply-region "vm-rfaddons" "\
Replace marked region or current line with `vm-mail-elide-reply-region'.
B and E are the beginning and end of the marked region or the current line.

\(fn B E)" t nil)

(autoload 'vm-save-everything "vm-rfaddons" "\
Save all VM folder buffers, BBDB and newsrc if GNUS is started.

\(fn)" t nil)

(autoload 'vm-get-all-new-mail "vm-rfaddons" "\
Get mail for all opened VM folders.

\(fn)" t nil)

(autoload 'vm-save-message-preview "vm-rfaddons" "\
Save preview of a message in FILE.
It saves the decoded message and not the raw message like `vm-save-message'

\(fn FILE)" t nil)

(autoload 'vm-assimilate-outlook-message "vm-rfaddons" "\
Assimilate a message which has been forwarded by MS Outlook.
You will need vm-pine.el in order to get this work.

\(fn)" t nil)

(autoload 'vm-install-rf-faces "vm-rfaddons" "\


\(fn)" nil nil)

(autoload 'vm-mail-mode-comment-region "vm-rfaddons" "\
Comment or uncomment each line in the region BEG to END.
With just a non-nil prefix ARG, uncomment each line in region.
Numeric prefix arg ARG means use ARG comment characters.
If ARG is negative, delete that many comment characters instead.
Comments are terminated on each line, even for syntax in which newline does
not end the comment.  Blank lines do not get comments.

\(fn BEG END &optional ARG)" t nil)

(autoload 'vm-delete-message-action "vm-rfaddons" "\
Delete current message and perform some action after it, e.g. move to next.
Call it with a prefix ARG to change the action.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-rfaddons" '("vm-" "bbdb/vm-" "rf-vm-su-labels")))

;;;***

;;;### (autoloads nil "vm-save" "vm-save.el" (0 0 0 0))
;;; Generated autoloads from vm-save.el

(autoload 'vm-auto-select-folder "vm-save" "\


\(fn MP AUTO-FOLDER-ALIST)" nil nil)

(autoload 'vm-auto-archive-messages "vm-save" "\
Save all unfiled messages that auto-match a folder via
`vm-auto-folder-alist' to their appropriate folders.  Messages that
are flagged for deletion are not saved.

Prefix arg means to ask user for confirmation before saving each message.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only marked messages are checked against `vm-auto-folder-alist'.  

The saved messages are flagged as `filed'.

\(fn &optional ARG)" t nil)

(autoload 'vm-save-message "vm-save" "\
Save the current message to another FOLDER, queried via the
mini-buffer.  The FOLDER may be a local file system folder or an
IMAP folder.  You can specify a preference by setting the
variable `vm-imap-save-to-server'.

Prefix arg COUNT means save this message and the next COUNT-1
messages.  A negative COUNT means save this message and the
previous COUNT-1 messages.

When invoked on marked messages (via `vm-next-command-uses-marks'),       
all marked messages in the current folder are saved; other messages are
ignored.  If applied to collapsed threads in summary and thread operations are
enabled via `vm-enable-thread-operations' then all messages in the
thread are saved.

\(fn FOLDER &optional COUNT MLIST QUIET)" t nil)

(autoload 'vm-save-message-to-local-folder "vm-save" "\
Save the current message to a mail folder.
If the folder already exists, the message will be appended to it.

Prefix arg COUNT means save this message and the next COUNT-1
messages.  A negative COUNT means save this message and the
previous COUNT-1 messages.

When invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages in the current folder are saved; other messages are
ignored.  If  applied to collapsed threads in summary and thread
operations are enabled via `vm-enable-thread-operations' then all messages
in the thread are saved.

The saved messages are flagged as `filed'.

\(fn FOLDER &optional COUNT MLIST QUIET)" t nil)

(autoload 'vm-save-message-sans-headers "vm-save" "\
Save the current message to a file, without its header section.
If the file already exists, the message body will be appended to it.
Prefix arg COUNT means save the next COUNT message bodiess.  A
negative COUNT means save the previous COUNT bodies.

When invoked on marked messages (via `vm-next-command-uses-marks'),
only the next COUNT marked messages are saved; other intervening
messages are ignored.  If applied to collapsed threads in summary and
thread operations are enabled via `vm-enable-thread-operations' then all
messages in the thread are saved.

The saved messages are flagged as `written'.

This command should NOT be used to save message to mail folders; use
`vm-save-message' instead (normally bound to `s').

\(fn FILE &optional COUNT QUIET)" t nil)

(autoload 'vm-pipe-message-to-command "vm-save" "\
Runs a shell command with contents from the current message as input.
By default, the entire message is used.  Message separators are
included if `vm-message-includes-separators' is non-Nil.

With one \\[universal-argument] the text portion of the message is used.
With two \\[universal-argument]'s the header portion of the message is used.
With three \\[universal-argument]'s the visible header portion of the message
plus the text portion is used.

When invoked on marked messages (via `vm-next-command-uses-marks'),
each marked message is successively piped to the shell command, one
message per command invocation.  If  applied to collapsed threads in 
summary and thread operations are enabled via
`vm-enable-thread-operations' then all messages in the thread are piped. 

Output, if any, is displayed.  The message is not altered.

\(fn COMMAND &optional PREFIX-ARG DISCARD-OUTPUT)" t nil)

(autoload 'vm-pipe-message-to-command-discard-output "vm-save" "\
Run a shell command with contents from the current message as input.
This function is like `vm-pipe-message-to-command', but will not display the
output of the command.

\(fn COMMAND &optional PREFIX-ARG)" t nil)

(autoload 'vm-pipe-messages-to-command "vm-save" "\
Run a shell command with contents from messages as input.

Similar to `vm-pipe-message-to-command', but it will call process
just once and pipe all messages to it.  For bulk operations this
is much faster than calling the command on each message.  This is
more like saving to a pipe.

With one \\[universal-argument] the text portion of the messages is used.
With two \\[universal-argument]'s the header portion of the messages is used.
With three \\[universal-argument]'s the visible header portion of the messages
plus the text portion is used.

Leading and trailing separators are included with each message
depending on the settings of `vm-pipe-messages-to-command-start'
and `vm-pipe-messages-to-command-end'.

Output, if any, is displayed unless DISCARD-OUTPUT is t.

If NO-WAIT is t, then do not wait for process to finish, if it is
a function then call it with the COMMAND and OUTPUT-BUFFER as
arguments after the command finished.

\(fn COMMAND &optional PREFIX-ARG DISCARD-OUTPUT NO-WAIT)" t nil)

(autoload 'vm-pipe-messages-to-command-discard-output "vm-save" "\
Runs a shell command with contents from the current message as input.
This function is like `vm-pipe-messages-to-command', but will not display the
output of the command.

\(fn COMMAND &optional PREFIX-ARG)" t nil)

(autoload 'vm-print-message "vm-save" "\
Print the current message
Prefix arg N means print the current message and the next N - 1 messages.
Prefix arg -N means print the current message and the previous N - 1 messages.

The variable `vm-print-command' controls what command is run to
print the message, and `vm-print-command-switches' is a list of switches
to pass to the command.

When invoked on marked messages (via `vm-next-command-uses-marks'),
each marked message is printed, one message per vm-print-command
invocation.  If applied to collapsed threads in summary and thread
operations are enabled via `vm-enable-thread-operations' then all messages
in the thread are printed.

Output, if any, is displayed.  The message is not altered.

\(fn &optional COUNT)" t nil)

(autoload 'vm-save-message-to-imap-folder "vm-save" "\
Save the current message to an IMAP folder.
Prefix arg COUNT means save this message and the next COUNT-1
messages.  A negative COUNT means save this message and the
previous COUNT-1 messages.

When invoked on marked messages (via `vm-next-command-uses-marks'),
all marked messages in the current folder are saved; other messages are
ignored.  If applied to collapsed threads in summary and thread
operations are enabled via `vm-enable-thread-operations' then all
messages in the thread are saved.

The saved messages are flagged as `filed'.

\(fn FOLDER &optional COUNT MLIST QUIET)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-save" '("vm-")))

;;;***

;;;### (autoloads nil "vm-search" "vm-search.el" (0 0 0 0))
;;; Generated autoloads from vm-search.el

(autoload 'vm-isearch-forward "vm-search" "\
Incrementally search forward through the current folder's messages.
Usage is identical to the standard Emacs incremental search.
When the search terminates the message containing point will be selected.

If the variable vm-search-using-regexps is non-nil, regular expressions
are understood; nil means the search will be for the input string taken
literally.  Specifying a prefix ARG interactively toggles the value of
vm-search-using-regexps for this search.

\(fn &optional ARG)" t nil)

(autoload 'vm-isearch-backward "vm-search" "\
Incrementally search backward through the current folder's messages.
Usage is identical to the standard Emacs incremental search.
When the search terminates the message containing point will be selected.

If the variable vm-search-using-regexps is non-nil, regular expressions
are understood; nil means the search will be for the input string taken
literally.  Specifying a prefix ARG interactively toggles the value of
vm-search-using-regexps for this search.

\(fn &optional ARG)" t nil)

(autoload 'vm-isearch-narrow "vm-search" "\


\(fn)" nil nil)

(autoload 'vm-isearch-update "vm-search" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-search" '("vm-isearch")))

;;;***

;;;### (autoloads nil "vm-serial" "vm-serial.el" (0 0 0 0))
;;; Generated autoloads from vm-serial.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-serial" '("vm-")))

;;;***

;;;### (autoloads nil "vm-sort" "vm-sort.el" (0 0 0 0))
;;; Generated autoloads from vm-sort.el

(autoload 'vm-move-message-forward "vm-sort" "\
Move a message forward in a VM folder.
Prefix arg COUNT causes the current message to be moved COUNT messages forward.
A negative COUNT causes movement to be backward instead of forward.
COUNT defaults to 1.  The current message remains selected after being
moved.

If vm-move-messages-physically is non-nil, the physical copy of
the message in the folder is moved.  A nil value means just
change the presentation order and leave the physical order of
the folder undisturbed.

\(fn COUNT)" t nil)

(autoload 'vm-move-message-backward "vm-sort" "\
Move a message backward in a VM folder.
Prefix arg COUNT causes the current message to be moved COUNT
messages backward.  A negative COUNT causes movement to be
forward instead of backward.  COUNT defaults to 1.  The current
message remains selected after being moved.

If vm-move-messages-physically is non-nil, the physical copy of
the message in the folder is moved.  A nil value means just
change the presentation order and leave the physical order of
the folder undisturbed.

\(fn COUNT)" t nil)

(autoload 'vm-move-message-forward-physically "vm-sort" "\
Like vm-move-message-forward but always move the message physically.

\(fn COUNT)" t nil)

(autoload 'vm-move-message-backward-physically "vm-sort" "\
Like vm-move-message-backward but always move the message physically.

\(fn COUNT)" t nil)

(autoload 'vm-so-sortable-datestring "vm-sort" "\
Returns the date string of M.  The date returned is obtained from
the \"Date\" header of the message, if it exists, or the date the
message was received in VM.  If `vm-sort-messages-by-delivery-date' is
non-nil, then the \"Delivery-Date\" header is used instead of the
\"Date\" header.

\(fn M)" nil nil)

(autoload 'vm-so-sortable-subject "vm-sort" "\
Returns the subject string of M, after stripping redundant prefixes
and suffixes, which is suitable for sorting by subject.  The string is
MIME-decoded with possible properties.

\(fn M)" nil nil)

(autoload 'vm-sort-messages "vm-sort" "\
Sort message in a folder by the specified KEYS.
KEYS is a string of sort keys, separated by spaces or tabs.  If
messages compare equal by the first key, the second key will be
compared and so on.  When called interactively the keys will be
read from the minibuffer.  Valid keys are

\"date\"		\"reversed-date\"
\"activity\" 		\"reversed-activity\"
\"author\"		\"reversed-author\"
\"full-name\"		\"reversed-full-name\"
\"subject\"		\"reversed-subject\"
\"recipients\"		\"reversed-recipients\"
\"line-count\"		\"reversed-line-count\"
\"byte-count\"		\"reversed-byte-count\"
\"physical-order\"	\"reversed-physical-order\"
\"spam-score\"		\"reversed-spam-score\"

Optional second arg (prefix arg interactively) means the sort
should change the physical order of the messages in the folder.
Normally VM changes presentation order only, leaving the
folder in the order in which the messages arrived.

\(fn KEYS &optional LETS-GET-PHYSICAL)" t nil)

(autoload 'vm-sort-compare-xxxxxx "vm-sort" "\


\(fn MSG1 MSG2)" nil nil)

(autoload 'vm-sort-compare-physical-order "vm-sort" "\


\(fn M1 M2)" nil nil)

(autoload 'vm-sort-compare-physical-order-r "vm-sort" "\


\(fn M1 M2)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-sort" '("vm-")))

;;;***

;;;### (autoloads nil "vm-summary" "vm-summary.el" (0 0 0 0))
;;; Generated autoloads from vm-summary.el

(autoload 'vm-summarize "vm-summary" "\
Summarize the contents of the folder in a summary buffer.
The format is as described by the variable `vm-summary-format'.  Generally
one line per message is most pleasing to the eye but this is not
mandatory.

\(fn &optional DISPLAY RAISE)" t nil)

(autoload 'vm-summarize-other-frame "vm-summary" "\
Like vm-summarize, but run in a newly created frame.

\(fn &optional DISPLAY)" t nil)

(autoload 'vm-get-header-contents "vm-summary" "\
Return the header field of MESSAGE with the header name matching
HEADER-NAME-REGEXP.  The result will be a string that is
mime-encoded.  The optional argument CLUMP-SEP, if present, should be
a string, which can be used as a separator to concatenate the fields
of multiple header lines which might match HEADER-NAME-REGEXP.
							USR, 2010-05-13.

\(fn MESSAGE HEADER-NAME-REGEXP &optional CLUMP-SEP)" nil nil)

(autoload 'vm-su-message-id "vm-summary" "\
Returns the message id of M.  It is a mime-encoded string.
							USR 2010-12-16

\(fn M)" nil nil)

(autoload 'vm-su-subject "vm-summary" "\
Returns the subject string of M, either from the stored
entry (vm-subject-of) or recalculating it if necessary.  It is a
mime-decoded string with text properties.  USR 2010-05-13

\(fn M)" nil nil)

(autoload 'vm-fix-my-summary "vm-summary" "\
Rebuild the summary.
Call this function if you made changes to `vm-summary-format'.

\(fn &optional KILL-LOCAL-SUMMARY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-summary" '("vm-")))

;;;***

;;;### (autoloads nil "vm-summary-faces" "vm-summary-faces.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from vm-summary-faces.el

(autoload 'vm-summary-faces-hide "vm-summary-faces" "\
Toggle visibility of a particular vm-summary-face.  By
default, the deleted face is toggled (with the effect that all
deleted messages will be hidden or unhidden).  

With a prefix argument, the property name identifying the face is
queried interactively.  The property is a keyword such as edited,
collapsed or outgoing which has an associated face such as
vm-summary-edited.  See `vm-summary-faces-alist' for a list
of available face names.

\(fn &optional PROP)" t nil)

(autoload 'vm-summary-faces-add "vm-summary-faces" "\
Add a face to a summary entry according to `vm-summary-faces-alist'.

\(fn MSG)" nil nil)

(autoload 'vm-summary-faces-mode "vm-summary-faces" "\
Toggle `vm-summary-faces-mode'.  Optional argument ARG should be 0
or 1, indicating whether the summary faces should be off or on.

When it is on, the VM summary buffers are decorated with faces, i.e.,
fonts and colors, for easy recogniton of the message status.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-summary-faces" '("vm-summary-faces-")))

;;;***

;;;### (autoloads nil "vm-thread" "vm-thread.el" (0 0 0 0))
;;; Generated autoloads from vm-thread.el

(autoload 'vm-thread-symbol "vm-thread" "\
Returns the interned symbol of message M which carries the
threading information.  Threads should have been built before this.
Otherwise nil is returned.

\(fn M)" nil nil)

(autoload 'vm-subject-symbol "vm-thread" "\
Returns the interned symbol of message M which carries the
subject-based threading information.  Threads should have been built
before this.  Otherwise nil is returned.

\(fn M)" nil nil)

(autoload 'vm-toggle-threads-display "vm-thread" "\
Toggle the threads display on and off.
When the threads display is on, the folder will be sorted by
thread activity and thread indentation (via the %I summary format
specifier) will be visible.

\(fn)" t nil)

(autoload 'vm-promote-subthread "vm-thread" "\
Decrease the thread indentation of the current message and its
subthread by $N$ steps (provided as a prefix argument).  

The case $N$ being 0 is a special case.  It means to decrease the
indentation all the way to 0.

\(fn N)" t nil)

(autoload 'vm-demote-subthread "vm-thread" "\
Increase the thread indentation of the current message and its
subthread by $N$ steps (provided as a prefix argument).  

The case $N$ being 0 is a special case.  It means to reset the
indentation back to the normal indentation, i.e., no offset is used.

\(fn N)" t nil)

(autoload 'vm-build-threads "vm-thread" "\
For all messages in MESSAGE-LIST, build thread information in the
`vm-thread-obarray' and `vm-thread-subject-obarray'.  If MESSAGE-LIST
is nil, do it for all the messages in the folder.  USR, 2010-07-15

\(fn MESSAGE-LIST)" nil nil)

(autoload 'vm-build-thread-lists "vm-thread" "\
Fill in the thread-list fields of the Soft data vector for all
messages in the folder.  Threads should have been built before this
function is called.

\(fn)" nil nil)

(autoload 'vm-thread-mark-for-summary-update "vm-thread" "\
Mark the messages in MESSAGE-LIST and all their descendants for
summary update.  This function does not depend on cached
thread-subtrees.                                USR, 2011-04-03

\(fn MESSAGE-LIST)" nil nil)

(autoload 'vm-unthread-message-and-mirrors "vm-thread" "\
Removes MESSAGE and all its mirrored messages from their
current threads.  If optional argument MESSAGE-CHANGING is
non-nil, then forget information that might be different if the
message contents changed.

MESSAGE should be a real (non-virtual) message.

The full functionality of this function is not entirely clear.  
						USR, 2010-07-24

\(fn MESSAGE &key MESSAGE-CHANGING)" nil nil)

(autoload 'vm-unthread-message "vm-thread" "\
Removes message M from its thread.  If optional argument
MESSAGE-CHANGING is non-nil, then forget information that might
be different if the message contents changed.  The message will be
reinserted into an appropriate thread later.       USR, 2011-03-17

\(fn M &key MESSAGE-CHANGING)" nil nil)

(autoload 'vm-attach-to-thread "vm-thread" "\
Attach the current message as a child of the message last visited.

\(fn)" t nil)

(autoload 'vm-references "vm-thread" "\
Returns the cached references list of message M.  If the cache is
nil, retrieves the references list from the headers and caches it.
USR, 2010-03-13

\(fn M)" nil nil)

(autoload 'vm-parent "vm-thread" "\
Returns the cached parent message of message M (in its thread).  If
the cache is nil, calculates the parent and caches it.  USR, 2010-03-13

\(fn M)" nil nil)

(autoload 'vm-thread-indentation "vm-thread" "\
Returns the cached thread-indentation of message M.  If the cache is
nil, calculates the thread-indentation and caches it.  It also applies
any thread-indentation-offset that has been defined for a subthread.
							USR, 2011-04-03

\(fn M)" nil nil)

(autoload 'vm-thread-list "vm-thread" "\
Returns the cached thread-list of message M.  If the cache is nil,
calculates the thread-list and caches it.  USR, 2010-03-13

\(fn M)" nil nil)

(autoload 'vm-thread-root "vm-thread" "\
Returns the root message of M.  M can be either a message or
the interned symbol of a message.  If there are multiple messages with
the same root message ID, one of them is chosen arbitrarily.  Threads
should have been built for this function to work.

\(fn M)" nil nil)

(autoload 'vm-thread-root-sym "vm-thread" "\
Returns interned symbol of the root message of M.  M can be
either a message or the interned symbol of M.  Threads should
have been built for this function to work.  

See also: `vm-thread-root'.

\(fn M)" nil nil)

(autoload 'vm-thread-root-p "vm-thread" "\
Returns t if message M is known to be a thread root, nil
otherwise.  No exceptions are thrown for errors.

\(fn M)" nil nil)

(autoload 'vm-thread-subtree "vm-thread" "\
Returns the list of messages in the thread subtree of MSG.
MSG can be a message or the interned symbol of a message.
Threads should have been built for this function to work.

\(fn MSG)" nil nil)

(autoload 'vm-thread-count "vm-thread" "\
Returns the number of messages in the thread-subtree of message M.
M can be a message or the interned symbol of M.  Threads should
have been built for this function to work.

\(fn M)" nil nil)

(autoload 'vm-check-thread-integrity "vm-thread" "\
Check that all messages are members of their thread subtrees.
Conversely, all members of thread subtrees should actually belong
to the thread.  Used for testing purposes.

\(fn &optional ML)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-thread" '("vm-")))

;;;***

;;;### (autoloads nil "vm-toolbar" "vm-toolbar.el" (0 0 0 0))
;;; Generated autoloads from vm-toolbar.el

(autoload 'vm-toolbar-helper-command "vm-toolbar" "\


\(fn)" t nil)

(autoload 'vm-toolbar-delete/undelete-message "vm-toolbar" "\


\(fn &optional PREFIX-ARG)" t nil)

(autoload 'vm-toolbar-can-autofile-p "vm-toolbar" "\


\(fn)" t nil)

(autoload 'vm-toolbar-autofile-message "vm-toolbar" "\


\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-toolbar" '("vm-toolbar-")))

;;;***

;;;### (autoloads nil "vm-undo" "vm-undo.el" (0 0 0 0))
;;; Generated autoloads from vm-undo.el

(autoload 'vm-undo "vm-undo" "\
Undo last change to message attributes in the current folder.
Consecutive invocations of this command cause sequentially earlier
changes to be undone.  After an intervening command between undos,
the undos themselves become undoable.

\(fn)" t nil)

(autoload 'vm-set-message-attributes "vm-undo" "\
Set message attributes.
Use this command to change attributes like `deleted' or
`replied'.  Interactively you will be prompted for the attributes
to be changed, and only the attributes you enter will be altered.
You can use completion to expand the attribute names.  The names
should be entered as a space separated list.

A numeric prefix argument COUNT causes the current message and
the next COUNT-1 message to have their attributes altered.  A
negative COUNT arg causes the current message and the previous
COUNT-1 messages to be altered.  COUNT defaults to one.

\(fn STRING COUNT)" t nil)

(autoload 'vm-add-message-labels "vm-undo" "\
Attach some labels to a message.
These are arbitrary user-defined labels, not to be confused with
message attributes like `new' and `deleted'.  Interactively you
will be prompted for the labels to be added.  You can use
completion to expand the label names, with the completion list
being all the labels that have ever been used in this folder.
The names should be entered as a space separated list.  Label
names are compared case-insensitively.

A numeric prefix argument COUNT causes the current message and
the next COUNT-1 message to have the labels added.  A
negative COUNT arg causes the current message and the previous
COUNT-1 messages to be altered.  COUNT defaults to one.

\(fn STRING COUNT)" t nil)

(autoload 'vm-add-existing-message-labels "vm-undo" "\
Attach some already existing labels to a message.
Only labels that are currently attached to some message in this
folder or labels that have previously been attached to messages
in this folder will be added.  Other labels will be silently
ignored.

These are arbitrary user-defined labels, not to be confused with
message attributes like `new' and `deleted'.  Interactively you
will be prompted for the labels to be added.  You can use
completion to expand the label names, with the completion list
being all the labels that have ever been used in this folder.
The names should be entered as a space separated list.  Label
names are compared case-insensitively.

A numeric prefix argument COUNT causes the current message and
the next COUNT-1 messages to have the labels added.  A
negative COUNT arg causes the current message and the previous
COUNT-1 messages to be altered.  COUNT defaults to one.

\(fn STRING COUNT)" t nil)

(autoload 'vm-delete-message-labels "vm-undo" "\
Delete some labels from a message.
These are arbitrary user-defined labels, not to be confused with
message attributes like `new' and `deleted'.  Interactively you
will be prompted for the labels to be deleted.  You can use
completion to expand the label names, with the completion list
being all the labels that have ever been used in this folder.
The names should be entered as a space separated list.  Label
names are compared case-insensitively.

A numeric prefix argument COUNT causes the current message and
the next COUNT-1 message to have the labels deleted.  A
negative COUNT arg causes the current message and the previous
COUNT-1 messages to be altered.  COUNT defaults to one.

\(fn STRING COUNT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-undo" '("vm-")))

;;;***

;;;### (autoloads nil "vm-user" "vm-user.el" (0 0 0 0))
;;; Generated autoloads from vm-user.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-user" '("vm-user-composition-")))

;;;***

;;;### (autoloads nil "vm-vars" "vm-vars.el" (0 0 0 0))
;;; Generated autoloads from vm-vars.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-vars" '("vm-" "pop-up-frames" "highlight-headers-regexp" "mode-popup-menu")))

;;;***

;;;### (autoloads nil "vm-vcard" "vm-vcard.el" (0 0 0 0))
;;; Generated autoloads from vm-vcard.el

(defvar vm-vcard-format-function nil "\
*Function to use for formatting vcards; if nil, use default.")

(defvar vm-vcard-filter nil "\
*Filter function to use for formatting vcards; if nil, use default.")

(autoload 'vm-mime-display-internal-text/x-vcard "vm-vcard" "\


\(fn LAYOUT)" nil nil)

(autoload 'vm-mime-display-internal-text/vcard "vm-vcard" "\


\(fn LAYOUT)" nil nil)

(autoload 'vm-mime-display-internal-text/directory "vm-vcard" "\


\(fn LAYOUT)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-vcard" '("vm-vcard-")))

;;;***

;;;### (autoloads nil "vm-version" "vm-version.el" (0 0 0 0))
;;; Generated autoloads from vm-version.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-version" '("vm-")))

;;;***

;;;### (autoloads nil "vm-virtual" "vm-virtual.el" (0 0 0 0))
;;; Generated autoloads from vm-virtual.el

(autoload 'vm-build-virtual-message-list "vm-virtual" "\
Builds a list of messages matching the virtual folder definition
stored in the variable `vm-virtual-folder-definition'.

If the NEW-MESSAGES argument is nil, the message list is
derived from the folders listed in the virtual folder
definition and selected by the various selectors.  The
resulting message list is assigned to `vm-message-list' unless
DONT-FINALIZE is non-nil.

If NEW-MESSAGES is non-nil then it is a list of messages to
be tried against the selector parts of the virtual folder
definition.  Matching messages are added to `vm-message-list',
instead of replacing it.

The messages in the NEW-MESSAGES list, if any, must all be in the
same real folder.

The list of matching virtual messages is returned.

If DONT-FINALIZE is nil, in addition to `vm-message-list' being
set, the virtual messages are added to the virtual message
lists of their real messages, the current buffer is added to
`vm-virtual-buffers' list of each real folder buffer represented
in the virtual list, and `vm-real-buffers' is set to a list of
all the real folder buffers involved.

\(fn NEW-MESSAGES &optional DONT-FINALIZE)" nil nil)

(autoload 'vm-create-virtual-folder "vm-virtual" "\
Create a new virtual folder from messages in the current folder.
The messages will be chosen by applying the selector you specify,
which is normally read from the minibuffer.

Prefix arg means the new virtual folder should be visited read only.

\(fn SELECTOR &optional ARG READ-ONLY NAME BOOKMARK)" t nil)

(autoload 'vm-create-virtual-folder-of-threads "vm-virtual" "\
Create a new virtual folder of threads in the current folder.
The threads will be chosen by applying the selector you specify,
which is normally read from the minibuffer.  If any message in a
thread matches the selector then the thread is chosen.

Prefix arg means the new virtual folder should be visited read only.

\(fn SELECTOR &optional ARG READ-ONLY NAME BOOKMARK)" t nil)

(autoload 'vm-apply-virtual-folder "vm-virtual" "\
Apply the selectors of a named virtual folder to the current folder
and create a virtual folder containing the selected messages.

Prefix arg means the new virtual folder should be visited read only.

\(fn NAME &optional READ-ONLY)" t nil)

(autoload 'vm-create-virtual-folder-same-subject "vm-virtual" "\
Create a virtual folder (search folder) for all messages with
the same subject as the current message.

\(fn)" t nil)

(autoload 'vm-create-virtual-folder-same-author "vm-virtual" "\
Create a virtual folder (search folder) for all messages from the
same author as the current message.

\(fn)" t nil)

(autoload 'vm-create-author-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) of messages with the given
author in the current folder. 

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional ARG READ-ONLY NAME)" t nil)

(autoload 'vm-create-author-or-recipient-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) with given author or
recipient from messages in the current folder.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional ARG READ-ONLY NAME)" t nil)

(autoload 'vm-create-subject-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) with given subject from
messages in the current folder. 

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional ARG READ-ONLY SUBJECT)" t nil)

(autoload 'vm-create-text-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) of all messsages with the
given string in its text.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional ARG READ-ONLY SUBJECT)" t nil)

(autoload 'vm-create-date-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) of all messsages with date
in given range.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional ARG READ-ONLY SUBJECT)" t nil)

(autoload 'vm-create-label-virtual-folder "vm-virtual" "\
Create a virtual folder with given label from messages in the
current folder.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional ARG READ-ONLY NAME)" t nil)

(autoload 'vm-create-flagged-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) with all the flagged
messages in the current folder.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional READ-ONLY NAME)" t nil)

(autoload 'vm-create-new-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) of all newly received
messages in the current folder.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional READ-ONLY NAME)" t nil)

(autoload 'vm-create-unseen-virtual-folder "vm-virtual" "\
Create a virtual folder (search folder) of all unseen from messages in the
current folder.

Prefix arg means the new virtual folder should be visited read only.

\(fn &optional READ-ONLY NAME)" t nil)

(autoload 'vm-virtual-help "vm-virtual" "\


\(fn)" t nil)

(autoload 'vm-read-virtual-selector "vm-virtual" "\


\(fn PROMPT)" nil nil)

(autoload 'vm-virtual-quit "vm-virtual" "\
Clear away links between real and virtual folders when a
`vm-quit' is performed in the current folder (which could be either
real or virtual).

\(fn &optional NO-EXPUNGE NO-CHANGE)" nil nil)

(autoload 'vm-virtual-save-folder "vm-virtual" "\


\(fn PREFIX)" nil nil)

(autoload 'vm-virtual-get-new-mail "vm-virtual" "\


\(fn)" nil nil)

(autoload 'vm-make-virtual-copy "vm-virtual" "\
Copy of the real message of the virtual message M in the current
folder buffer (which should be the virtual folder in which M occurs).

\(fn M)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-virtual" '("vm-")))

;;;***

;;;### (autoloads nil "vm-w3" "vm-w3.el" (0 0 0 0))
;;; Generated autoloads from vm-w3.el

(autoload 'vm-mime-display-internal-w3-text/html "vm-w3" "\


\(fn START END LAYOUT)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-w3" '("vm-w3-")))

;;;***

;;;### (autoloads nil "vm-w3m" "vm-w3m.el" (0 0 0 0))
;;; Generated autoloads from vm-w3m.el

(autoload 'vm-mime-display-internal-emacs-w3m-text/html "vm-w3m" "\
Use emacs-w3m to inline HTML mails in the VM presentation buffer.

\(fn START END LAYOUT)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-w3m" '("vm-w3m-")))

;;;***

;;;### (autoloads nil "vm-window" "vm-window.el" (0 0 0 0))
;;; Generated autoloads from vm-window.el

(autoload 'vm-display "vm-window" "\


\(fn BUFFER DISPLAY COMMANDS CONFIGS &optional DO-NOT-RAISE)" nil nil)

(autoload 'vm-save-window-configuration "vm-window" "\
Name and save the current window configuration.
With this command you associate the current window setup with an
action.  Each time you perform this action VM will duplicate this
window setup.

Nearly every VM command can have a window configuration
associated with it.  VM also allows some category configurations,
`startup', `reading-message', `composing-message', `editing-message',
`marking-message' and `searching-message' for the commands that
do these things.  There is also a `default' configuration that VM
will use if no other configuration is applicable.  Command
specific configurations are searched for first, then the category
configurations and then the default configuration.  The first
configuration found is the one that is applied.

The value of vm-mutable-window-configuration must be non-nil for VM to use
window configurations.

\(fn TAG)" t nil)

(autoload 'vm-delete-window-configuration "vm-window" "\
Delete the configuration saved for a particular action.
This action will no longer have an associated window configuration.
The action will be read from the minibuffer.

\(fn TAG)" t nil)

(autoload 'vm-apply-window-configuration "vm-window" "\
Change the current window configuration to be one
associated with a particular action.  The action will be read
from the minibuffer.

\(fn TAG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vm-window" '("vm-")))

;;;***

;;;### (autoloads nil nil ("vm-autoload.el" "vm-cus-load.el" "vm-startup.el")
;;;;;;  (0 0 0 0))

;;;***

;;;### (autoloads nil "tapestry" "tapestry.el" (0 0 0 0))
;;; Generated autoloads from tapestry.el

(autoload 'tapestry "tapestry" "\
Returns a list containing complete information about the current
configuration of Emacs frames, windows, buffers and cursor
positions.  Call the function set-tapestry with the list that this function
returns to restore the configuration.

Optional first arg FRAME-LIST should be a list of frames; only
configuration information about these frames will be returned.

The configuration information is returned in a form that can be saved and
restored across multiple Emacs sessions.

\(fn &optional FRAME-LIST)" nil nil)

(autoload 'set-tapestry "tapestry" "\
Restore the frame/window/buffer configuration described by MAP,
which should be a list previously returned by a call to
tapestry.

Optional second arg N causes frame reconfiguration to be skipped
and the windows of the current frame will configured according to
the window map of the Nth frame in MAP.

Optional third arg ROOT-WINDOW-EDGES non-nil should be a list
containing the edges of a window in the current frame.  This list
should be in the same form as returned by the `window-edges'
function.  The window configuration from MAP will be restored in
this window.  If no window with these exact edges exists, a
window that lies entirely within the edge coordinates will be
expanded until the edge coordinates match or the window bounded by
ROOT-WINDOW-EDGES is entirely contained within the expanded
window.  If no window entirely within the ROOT-WINDOW-EDGES edge
coordinates can be found, the window with the greatest overlap of
ROOT-WINDOW-EDGES will be used.

\(fn MAP &optional N ROOT-WINDOW-EDGES)" nil nil)

(autoload 'tapestry-remove-frame-parameters "tapestry" "\


\(fn MAP PARAMS)" nil nil)

(autoload 'tapestry-nullify-tapestry-elements "tapestry" "\


\(fn MAP &optional BUF-FILE-NAME BUF-NAME WINDOW-START WINDOW-POINT WINDOW-HSCROLL SELECTED-WINDOW)" nil nil)

(autoload 'tapestry-replace-tapestry-element "tapestry" "\


\(fn MAP WHAT FUNCTION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tapestry" '("tapestry-")))

;;;***
(custom-add-load 'vm 'vm-cus-load)
(setq vm-configure-datadir "/usr/local/share/vm")
(setq vm-configure-pixmapdir "/usr/local/share/vm/pixmaps")
(setq vm-configure-docdir "")
(setq vm-configure-infodir "")
(require 'vm-vars)
(provide 'vm-autoloads)
