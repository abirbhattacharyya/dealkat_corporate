require 'test_helper'

class EmailerTest < ActionMailer::TestCase
  test "sign_up" do
    @expected.subject = 'Emailer#sign_up'
    @expected.body    = read_fixture('sign_up')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Emailer.create_sign_up(@expected.date).encoded
  end

end
